<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |
| <a name="provider_random"></a> [random](#provider\_random) | n/a |

## Resources

| Name | Type |
|------|------|
| [github_branch.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/branch) | resource |
| [github_repository_file.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [github_repository_pull_request.this](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_pull_request) | resource |
| [random_id.this](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/id) | resource |
| [github_repository.this](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repository) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_branches"></a> [branches](#input\_branches) | List of branches that trigger GitHub action | `list(string)` | <pre>[<br>  "main"<br>]</pre> | no |
| <a name="input_env"></a> [env](#input\_env) | Name of you environment to use secrets from | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the github action | `string` | `"Deploy frontend"` | no |
| <a name="input_node_version"></a> [node\_version](#input\_node\_version) | Version of node | `string` | n/a | yes |
| <a name="input_repo"></a> [repo](#input\_repo) | Full name of repo: organization/repository | `string` | n/a | yes |
| <a name="input_secrets"></a> [secrets](#input\_secrets) | List of secrets to use from environment | `list(string)` | `[]` | no |
| <a name="input_url"></a> [url](#input\_url) | Your app url | `string` | `""` | no |
| <a name="input_work_dir"></a> [work\_dir](#input\_work\_dir) | Path trigger and project root (deployment will happen from `work_dir/build` | `string` | `""` | no |
<!-- END_TF_DOCS -->