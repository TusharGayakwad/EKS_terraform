module "vpc" {
    source = "./modules/vpc"
    
    env_prefix = var.env_prefix
    vpc_cidr = var.vpc_cidr
    instance_tenancy = var.instance_tenancy
    vpc_name = var.vpc_name 
    public01_subnet_cidr = var.public01_subnet_cidr
    public02_subnet_cidr = var.public02_subnet_cidr
    public01_subnet_name = var.public01_subnet_name
    public02_subnet_name = var.public02_subnet_name
    public_route_table_name = var.public_route_table_name
    eks_igw_name = var.eks_igw_name
}

module "eks_cluster_role" {
  source             = "./modules/iam_role"
   
  env_prefix = var.env_prefix 
  role-name          = var.cluster-role-name
  assume-role-service = var.cluster-assume-role-service
  policy_arns        = var.cluster-policy-arns
}

module "node_group_role" {
  source             = "./modules/iam_role"
  
  env_prefix = var.env_prefix
  role-name          = var.node-role-name
  assume-role-service = var.node-assume-role-service
  policy_arns        = var.node-policy_arns
}

module "aws_security_group" {
  source             = "./modules/security_group"

  env_prefix = var.env_prefix
  sg_name = var.sg_name
  vpc_id = module.vpc.vpc_id
  ingress_ports = var.ingress_ports
}