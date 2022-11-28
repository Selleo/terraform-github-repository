module "mymodule" {
  source = "../../modules/pr-backend-deployment"

  name     = "Deploy backtend"
  branches = ["main"]
  work_dir = "packages/api"
  repo     = "Selleo/devops-kacper"

  env         = "staging"
  cli_version = "v0.2.2"
}
