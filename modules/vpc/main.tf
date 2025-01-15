# resource "aws_vpc" "eks_demo" {
#   cidr_block       = var.vpc_cidr
#   instance_tenancy = var.instance_tenancy

#   tags = {
#     Name = var.tag_env
#   }
# }

# resource "aws_subnet" "public_subnet" {
#   vpc_id     = aws_vpc.eks_demo.id
#   cidr_block = var.public_subnet_cidr

#   tags = {
#     Name = var.tag_env
#   }
# }
# resource "aws_subnet" "private_subnet" {
#   vpc_id     = aws_vpc.eks_demo.id
#   cidr_block = var.private_subnet_cidr

#   tags = {
#     Name = var.tag_env
#   }
# }


# VPC Creation
resource "aws_vpc" "eks_demo" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = var.tag_env
  }
}

# Public Subnet 1 Creation
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.eks_demo.id
  cidr_block              = var.public01_subnet_cidr
  map_public_ip_on_launch = true  

  tags = {
    Name = var.tag_env
  }
}

# Public Subnet 2 Creation
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.eks_demo.id
  cidr_block              = var.public02_subnet_cidr
  map_public_ip_on_launch = true   
  tags = {
    Name = var.tag_env
  }
}

resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.eks_demo.id

  tags = {
    Name = var.tag_env
  }
}

# Route Table for Public Subnets
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.eks_demo.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.eks_igw.id
  }

  tags = {
    Name = var.tag_env
  }
}

# Associate Public Subnet 1 with Route Table
resource "aws_route_table_association" "public_subnet_1_association" {
  subnet_id      = aws_subnet.public_subnet_1.id
  route_table_id = aws_route_table.public_route_table.id
}

# Associate Public Subnet 2 with Route Table
resource "aws_route_table_association" "public_subnet_2_association" {
  subnet_id      = aws_subnet.public_subnet_2.id
  route_table_id = aws_route_table.public_route_table.id
}
