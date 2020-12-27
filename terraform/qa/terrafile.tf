module "create_vpc" {
  source       = "../modules/network/vpc"
  cidr_block   = var.cidr_block
  env          = var.env
  project_name = var.project_name
}

module "create_subnet_pub1a" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_pub1a
  subnet_az    = var.subnet_az_1a
  subnet_name  = var.subnet_name_pub1a
  project_name = var.project_name
}
