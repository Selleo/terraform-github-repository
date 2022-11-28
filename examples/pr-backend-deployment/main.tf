module "mymodule" {
  source = "../../modules/pr-backend-deployment"

  name     = "Deploy backend"
  branches = ["main"]
  work_dir = "packages/api"
  repo     = "Selleo/devops-kacper"
  env      = "staging"
}
