resource "aws_vpc" "eks_demo" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.instance_tenancy

  tags = {
    Name = "${var.env_prefix}-${var.vpc_name}"
  }
}


# Public Subnet 1 Creation
resource "aws_subnet" "public_subnet_1" {
  vpc_id                  = aws_vpc.eks_demo.id
  cidr_block              = var.public01_subnet_cidr
  map_public_ip_on_launch = true  

  tags = {
    Name = "${var.env_prefix}-${var.public01_subnet_name}"
  }
}

# Public Subnet 2 Creation
resource "aws_subnet" "public_subnet_2" {
  vpc_id                  = aws_vpc.eks_demo.id
  cidr_block              = var.public02_subnet_cidr
  map_public_ip_on_launch = true   
  tags = {
    Name = "${var.env_prefix}-${var.public02_subnet_name}"
  }
}

resource "aws_internet_gateway" "eks_igw" {
  vpc_id = aws_vpc.eks_demo.id

  tags = {
    Name = "${var.env_prefix}-${var.eks_igw_name}"
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
    Name = "${var.env_prefix}-${var.public_route_table_name}"
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
