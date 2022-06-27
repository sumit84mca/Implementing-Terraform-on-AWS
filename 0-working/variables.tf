variable "region" {
  type    = string
  default = "us-east-1"
}

variable "vpc_cidr_range" {
  type    = string
  default = "172.31.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["172.31.1.0/24", "172.31.2.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["172.31.3.0/24", "172.31.4.0/24"]
}

variable "project_name" {
  type = string
}

variable "infra_creator" {
  type = string
}

locals {
  common_tags = {
    "project" = var.project_name
    "owner"   = var.infra_creator
  }
}
