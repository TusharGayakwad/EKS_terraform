resource "aws_vpc" "eks_demo" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.tag_env
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.eks_demo.id
  cidr_block = var.public_subnet_cidr

  tags = {
    Name = var.tag_env
  }
}
resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.eks_demo.id
  cidr_block = var.private_subnet_cidr

  tags = {
    Name = var.tag_env
  }
}