variable "repo" {
  description = "Full name of repo: organization/repository"

  type = string
}

variable "secrets" {
  description = "The map of secrets"

  type = map
}

variable "env" {
  description = "Environment name"

  type = string
}
