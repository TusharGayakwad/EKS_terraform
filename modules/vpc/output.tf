output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.eks_demo.id
}

output "public01_subnet_id" {
  description = "The ID of the created first public subnet"
  value       = aws_subnet.public_subnet_1.id
}

output "public02_subnet_id" {
  description = "The ID of the created secend public subnet"
  value       = aws_subnet.public_subnet_2.id
}
output "route_table_id" {
  description = "The ID of the created route table"
  value = aws_route_table.public_route_table.id 
}

output "internet_gateway_id" {
  description = "The ID of the cretated internet gateway"
  value = aws_internet_gateway.eks_igw.id
}
