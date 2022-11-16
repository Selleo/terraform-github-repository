data "github_repository" "this" {
  full_name = var.repo
}

resource "github_actions_environment_secret" "this" {
  for_each        = var.secrets
  
  repository      = data.github_repository.this.name
  environment     = var.env
  secret_name     = each.key
  encrypted_value = base64encode(each.value)
}
