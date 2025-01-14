output "vpc_id" {
  description = "The ID of the created VPC"
  value       = aws_vpc.eks_demo.id
}

output "public_subnet_id" {
  description = "The ID of the created public subnet"
  value       = aws_subnet.public_subnet.id
}

output "private_subnet_id" {
  description = "The ID of the created private subnet"
  value       = aws_subnet.private_subnet.id
}
