module "mymodule" {
  source = "../../modules/environment"

  name = "testowe"

  repo = "Selleo/devops-kacper"

  envy = "testowe"
  
  secrets = {
    hello = "world"
  }
}
