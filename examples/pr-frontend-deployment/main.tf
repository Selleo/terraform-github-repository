module "mymodule" {
  source = "../../modules/pr-frontend-deployment"

  name     = "Deploy frontend"
  branches = ["main", "staging"]
  work_dir = "packages/client"
  secrets = [
    "REACT_APP_GRAPHQL_ENDPOINT",
    "REACT_APP_AUTH0_CLIENT_ID",
    "REACT_APP_AUTH0_CLIENT_ID",
    "REACT_APP_AUTH0_AUDIENCE"
  ]
  repo = ""

}
