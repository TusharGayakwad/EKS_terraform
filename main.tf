module "vpc" {
    source = "./modules/vpc"
    
    vpc_cidr = var.vpc_cidr
    instance_tenancy = var.instance_tenancy
    tag_env = var.tag_env 
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
}

