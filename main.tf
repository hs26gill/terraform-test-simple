terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.6.3"
    }
  }
}

variable "random_id_count" {
  type    = number
}

variable "random_name" {
  type    = string
}

resource "random_id" "this" {
  count       = var.random_id_count
  byte_length = 16
}

output "random_name" {
  value = var.random_name
}
