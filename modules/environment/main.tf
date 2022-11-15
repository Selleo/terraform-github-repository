data "github_repository" "example" {
  full_name = var.repo
}

resource "github_actions_environment_secret" "test_secret" {
  repository       = data.github_repository.example.name
  environment      = var.envy
  for_each         = var.secrets
  secret_name      = each.key
  encrypted_value  = base64encode(each.value)
}