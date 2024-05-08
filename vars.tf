variable "name" {
  type        = string
  description = "Route table name"
}

variable "environment" {
  type        = string
  description = "What environment of infrastructure, ex: dev / hml / prd"
  default     = "dev"
}

variable "region" {
  type        = string
  description = "AWS region"
  default     = "us-east-1"
}

variable "vpc_id" {
  type        = string
  description = "VPC id"
}

variable "cidr_block" {
  type        = string
  description = "The CIDR block of the route"
  default     = "0.0.0.0/0"
}

variable "internet_gateway" {
  type        = string
  description = "Internet Gateway ID, ex: igw-0fe275f1088695b67"
  default     = null
}

variable "nat_gateway" {
  type        = string
  description = "Nat Gateway ID, ex: nat-0efda96336a750b1b"
  default     = null
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnets to associate on route table"
  default     = []
}

variable "additional_tags" {
  type        = map(string)
  description = "Additional Tags, reserved tags: Name & Environment"
  default     = {}
}
