variable "labels" {
  description = "Map of issue labels: name = color"

  type = map
}
variable "repo" {
  description = "Full name of repo: organization/repository"

  type = string
}
