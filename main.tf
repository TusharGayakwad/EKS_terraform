module "vpc" {
    source = "./modules/vpc"
    
    vpc_cidr = var.vpc_cidr
    instance_tenancy = var.instance_tenancy
    tag_env = var.tag_env 
    public01_subnet_cidr = var.public01_subnet_cidr
    public02_subnet_cidr = var.public02_subnet_cidr
}

module "eks_cluster_role" {
  source             = "./modules/iam_role"

  role-name          = var.cluster-role-name
  assume-role-service = var.cluster-assume-role-service
  policy_arns        = var.cluster-policy-arns
}

module "node_group_role" {
  source             = "./modules/iam_role"

  role-name          = var.node-role-name
  assume-role-service = var.node-assume-role-service
  policy_arns        = var.node-policy_arns
}
