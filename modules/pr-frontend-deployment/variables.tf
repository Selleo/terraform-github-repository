variable "repo" {
  type        = string
  description = "Full name of repo: organization/repository"
}

variable "env" {
  type = string
  description = "Name of you environment to use secrets from"
}

variable "node_version" {
  type = string
  description =` "Version of node"
}

variable "name" {
  default = "Deploy frontend"
  type        = string
  description = "Name of the github action"
}

variable "url" {
  default = ""
  type        = string
  description = "Your app url"
}

variable "branches" {
  default = ["main"]
  type        = list(string)
  description = "List of branches that trigger GitHub action"
}

variable "work_dir" {
  default = ""
  type        = string
  description = "Path trigger and project root (deployment will happen from `work_dir/build"
}

variable "secrets" {
  default = []
  type        = list(string)
  description = "List of secrets to use from environment"
}
