variable "repo" {
  type        = string
  description = "Full name of repo: organization/repository"
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
  description = "Branches of your repository"
}
variable "work_dir" {
  default = "Working directory"

  type        = string
  description = ""
}
variable "secrets" {
  default = []

  type        = list(string)
  description = "List of REACT APP secrets"
}

