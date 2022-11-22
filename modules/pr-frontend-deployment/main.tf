locals {
  branch = "terraform-frontend-deployment-${random_id.server.hex}"
}

data "github_repository" "this" {
  full_name = var.repo
}

resource "github_branch" "development" {
  repository = data.github_repository.this.name
  branch     = local.branch
}

resource "github_repository_pull_request" "this" {
  base_repository = data.github_repository.this.name
  base_ref        = "main"
  head_ref        = local.branch
  title           = "PR-${random_id.server.hex}"
  body            = "This PR was automatically created by Terraform"

  depends_on = [
    github_branch.development,
    github_repository_file.this
  ]
}

resource "github_repository_file" "this" {
  repository = data.github_repository.this.name
  branch     = local.branch
  file       = ".github/workflows/deploy-frontend.yml"
  content = templatefile("${path.module}/deploy-frontend.tftpl", {
    name     = var.name
    url      = var.url
    branches = var.branches
    work_dir = var.work_dir
    secrets  = var.secrets
  })
  overwrite_on_create = true
}

resource "random_id" "server" {
  byte_length = 2
}
