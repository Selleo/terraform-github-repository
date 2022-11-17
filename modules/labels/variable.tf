variable "labels" {
  description = "Map of issue labels: name = color"

  type = map(string)
}
variable "repo" {
  description = "Full name of repo: organization/repository"

  type = string
}
