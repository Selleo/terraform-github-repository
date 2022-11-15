data "github_repository" "example" {
  full_name = var.repo
}
resource "github_issue_label" "example" {
  for_each      = var.issue_labels

  repository = data.github_repository.example.name
  name       = each.key
  color      = each.value
}