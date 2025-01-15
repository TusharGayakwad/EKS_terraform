module "vpc" {
    source = "./modules/vpc"
    
    vpc_cidr = var.vpc_cidr
    instance_tenancy = var.instance_tenancy
    tag_env = var.tag_env 
    public01_subnet_cidr = var.public01_subnet_cidr
    public02_subnet_cidr = var.public02_subnet_cidr
}

