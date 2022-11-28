variable "repo" {
  type        = string
  description = "Full name of repo: organization/repository"
}

variable "env" {
  type        = string
  description = "Name of you environment to use secrets from"
}

variable "cli_version" {
  default     = ""
  type        = string
  description = "Release tag of https://github.com/Selleo/cli"
}

variable "name" {
  default     = "Deploy backend"
  type        = string
  description = "Name of the github action"
}

variable "url" {
  default     = ""
  type        = string
  description = "Your app url"
}

variable "branches" {
  default     = ["main"]
  type        = list(string)
  description = "List of branches that trigger GitHub action"
}

variable "work_dir" {
  default     = ""
  type        = string
  description = "Path trigger and project root"
}

