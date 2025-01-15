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
