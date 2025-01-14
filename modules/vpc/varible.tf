variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "vpc_cidr"
}

variable "public_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
  description = "public_subnet_cidr"
}

variable "private_subnet_cidr" {
  type = string
  default = "10.0.2.0/24"
  description = "private_subnet_cidr"
}

variable "tag_env" {
  type = string
  default = "cluster_demo"
  description = "tag"
}


variable "instance_tenancy" {
  type = string
  default = "default"
  description = "tag"
}