variable "env_prefix" {
  description = "Prefix for environment-specific resources"
  type        = string
  default     = "dev" 
}

# ====================================== VPC
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
  description = "tag"
}

variable "instance_tenancy" {
  type = string
  default = "default"
  description = "tag"
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



# ====================================== EKS IAM role for cluster
variable "cluster-role-name" {
  type = string
  default = "eks-cluster-role"
  description = "EKS cluster role name."
}

variable "cluster-assume-role-service" {
  description = "The AWS service that can assume this role"
}

variable "cluster-policy-arns" {
  description = "List of IAM policy ARNs to attach to the role"
  type        = list(string)
}

# ====================================== EKS IAM role for node group

variable "node-role-name" {
  type = string
  default = "eks-cluster-role"
  description = "node group role name."
}

variable "node-assume-role-service" {
  description = "The AWS service that can assume this role"
}

variable "node-policy_arns" {
  description = "List of IAM policy ARNs to attach to the role"
  type        = list(string)
}
# =======================

variable "sg_name" {
  description = "Role-specific identifier for the Security Group"
  type        = string
  default     = "sg_eks"
}

variable "ingress_ports" {
  description = "List of ports to allow for inbound traffic"
  type        = list(number)
  default     = [ ] 
}
