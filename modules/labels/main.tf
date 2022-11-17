data "github_repository" "this" {
  full_name = var.repo
}
resource "github_issue_label" "this" {
  for_each = var.labels

  repository = data.github_repository.this.name
  name       = each.key
  color      = each.value
}
