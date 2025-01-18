# Environment Prefix
variable "env_prefix" {
  description = "Environment prefix for naming resources"
  type        = string
  default     = "dev" 
}

# Role Name
variable "sg_name" {
  description = "Role-specific identifier for the Security Group"
  type        = string
  default     = "app-sg" # Example: web-sg, db-sg
}

# VPC ID
variable "vpc_id" {
  description = "ID of the VPC to associate the Security Group with"
  type        = string
}

# Ingress Ports
variable "ingress_ports" {
  description = "List of ports to allow for inbound traffic"
  type        = list(number)
  default     = [ ]
}