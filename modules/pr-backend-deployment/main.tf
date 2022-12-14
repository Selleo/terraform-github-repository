locals {
  branch = "terraform-backend-deployment-${random_id.this.hex}"
  tag    = var.cli_version != "" ? var.cli_version : data.github_release.this.release_tag
}

data "github_release" "this" {
  repository  = "cli"
  owner       = "Selleo"
  retrieve_by = "latest"
}

data "github_repository" "this" {
  full_name = var.repo
}

resource "github_branch" "this" {
  repository = data.github_repository.this.name
  branch     = local.branch
}

resource "github_repository_pull_request" "this" {
  base_repository = data.github_repository.this.name
  base_ref        = "main"
  head_ref        = local.branch
  title           = "Auto generated: Add GitHub action - ${var.name}"
  body            = "Auto generated: Add backend deployment"

  depends_on = [
    github_branch.this,
    github_repository_file.this
  ]
}

resource "github_repository_file" "this" {
  repository = data.github_repository.this.name
  branch     = local.branch
  file       = ".github/workflows/deploy-backend.yml"
  content = templatefile("${path.module}/deploy-backend.tftpl", {
    name        = var.name
    url         = var.url
    branches    = var.branches
    work_dir    = var.work_dir
    env         = var.env
    cli_version = local.tag
  })
  overwrite_on_create = true

  depends_on = [
    github_branch.this
  ]
}

resource "random_id" "this" {
  byte_length = 2
}

