output "endpoint" {
  value = module.create_eks_cluster.endpoint
}

output "arn" {
  value = module.create_node_group.arn_node_group
}
