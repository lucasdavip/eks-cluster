module "create_eks_cluster" {
  source       = "../../modules/cluster/eks"
  cluster_name = var.cluster_name
  subnet_ids   = var.subnet_ids
}

module "create_node_group" {
  source          = "../../modules/cluster/node_group"
  cluster_name    = var.cluster_name
  node_group_name = var.node_group_name
  subnet_ids_ng   = var.subnet_ids_ng
  desired_size    = var.desired_size
  max_size        = var.max_size
  min_size        = var.min_size
  instance_types  = var.instance_types
  depends_on      = [module.create_eks_cluster]
}
