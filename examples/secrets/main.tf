module "mymodule" {

  source = "../../modules/secrets"
  repo   = "Selleo/devops-kacper"
  env    = "testowe"

  secrets = {
    hello = "world"
  }
}
