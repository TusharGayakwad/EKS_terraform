output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_1_id" {
  value = module.vpc.public01_subnet_id
}

output "public_subnet_2_id" {
  value = module.vpc.public02_subnet_id
}

output "internet_gateway_id" {
  value = module.vpc.internet_gateway_id
}

output "public_route_table_id" {
  value = module.vpc.route_table_id
}

output "eks_cluster_role_arn" {
  value = module.eks_cluster_role.role_arn
}

output "node_group_role_arn" {
  value = module.node_group_role.role_arn
}
