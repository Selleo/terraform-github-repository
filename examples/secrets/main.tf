module "mymodule" {

  source = "../../modules/environment"
  repo   = "Selleo/devops-kacper"
  env    = "testowe"

  secrets = {
    hello = "world"
  }
}
