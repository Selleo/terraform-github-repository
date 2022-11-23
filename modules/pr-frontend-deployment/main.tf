locals {
  branch = "terraform-frontend-deployment-${random_id.this.hex}"
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
  title           = "PR-${random_id.this.hex}"
  body            = "Auto generated: Add frontend deployment"

  depends_on = [
    github_branch.this,
    github_repository_file.this
  ]
}

resource "github_repository_file" "this" {
  repository = data.github_repository.this.name
  branch     = local.branch
  file       = ".github/workflows/deploy-frontend.yml"
  content = templatefile("${path.module}/deploy-frontend.tftpl", {
    name         = var.name
    url          = var.url
    branches     = var.branches
    work_dir     = var.work_dir
    secrets      = var.secrets
    environment  = var.env
    node_version = var.node_version
  })
  overwrite_on_create = true
}

resource "random_id" "this" {
  byte_length = 2
}
