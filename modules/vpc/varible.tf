variable "env_prefix" {
  description = "Prefix for environment-specific resources"
  type        = string
  default     = "dev" 
}

variable "vpc_cidr" {
  type = string
  default = "10.0.0.0/16"
  description = "vpc_cidr"
}

variable "public01_subnet_cidr" {
  type = string
  default = "10.0.1.0/24"
  description = "public01_subnet_cidr"
}

variable "public02_subnet_cidr" {
  type = string
  default = "10.0.2.0/24"
  description = "public02_subnet_cidr"
}

variable "vpc_name" {
  type = string
  default = "cluster_demo"
  description = "cluster name"
}

variable "public01_subnet_name" {
  type = string
  default = "cluster_public01_subnet"
  description = "public01_subnet_name"
}

variable "public02_subnet_name" {
  type = string
  default = "cluster_public02_subnet"
  description = "public02_subnet_name"
}

variable "public_route_table_name" {
  type = string
  default = "cluster_rt"
  description = "public_route_table_name"
}

variable "eks_igw_name" {
  type = string
  default = "cluster_igw"
  description = "eks_igw_name"
}

variable "instance_tenancy" {
  type = string
  default = "default"
  description = "tag"
}