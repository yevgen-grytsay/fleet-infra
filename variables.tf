variable "github_token" {
  sensitive = true
  type      = string
}

variable "github_org" {
  type = string
}

variable "github_repository" {
  type = string
}

variable "tele_token" {
  type      = string
  sensitive = true
}
