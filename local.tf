locals {
  default_tags = {
    Name         = var.name
    Project      = "initial-infra-terraform"
    Environment  = var.environment
  }
}
