module "create_eks_cluster" {
  source       = "../../modules/cluster/eks"
  cluster_name = var.cluster_name
  subnet_ids   = var.subnet_ids
}

