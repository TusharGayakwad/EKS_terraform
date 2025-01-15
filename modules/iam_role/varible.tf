variable "env_prefix" {
  description = "Prefix for environment-specific resources"
  type        = string
}

variable "role-name" {
  type = string
  default = "eks-cluster-role"
  description = "EKS cluster role name."
}

variable "tag_env" {
  type = string
  default = "dev"
  description = "iam role tag"
}

variable "assume-role-service" {
  description = "The AWS service that can assume this role"
}

variable "policy_arns" {
  description = "List of IAM policy ARNs to attach to the role"
  type        = list(string)
  default = []
}
