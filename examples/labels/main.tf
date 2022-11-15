module "mymodule" {
  source = "../../modules/labels"

  issue_labels = {
    "on hold" = "ff0000"
    bug = "ff00ff"
  }

  repo = "Selleo/terraform-github-repository"
}
