#-- vpc ------------------------------------------------
module "create_vpc" {
  source       = "../modules/network/vpc"
  cidr_block   = var.cidr_block
  env          = var.env
  project_name = var.project_name
}

#-- subnets --------------------------------------------
module "create_subnet_pub1a" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_pub1a
  subnet_az    = var.subnet_az_a
  subnet_name  = var.subnet_name_pub1a
  project_name = var.project_name
}

module "create_subnet_pub1b" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_pub1b
  subnet_az    = var.subnet_az_b
  subnet_name  = var.subnet_name_pub1b
  project_name = var.project_name
}

module "create_subnet_priv1a" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_priv1a
  subnet_az    = var.subnet_az_a
  subnet_name  = var.subnet_name_priv1a
  project_name = var.project_name
}

module "create_subnet_priv1b" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_priv1b
  subnet_az    = var.subnet_az_b
  subnet_name  = var.subnet_name_priv1b
  project_name = var.project_name
}

module "create_subnet_priv2a" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_priv2a
  subnet_az    = var.subnet_az_a
  subnet_name  = var.subnet_name_priv2a
  project_name = var.project_name
}

module "create_subnet_priv2b" {
  source       = "../modules/network/subnets"
  vpc_id       = module.create_vpc.vpc_id
  subnet_cidr  = var.subnet_cidr_priv2b
  subnet_az    = var.subnet_az_b
  subnet_name  = var.subnet_name_priv2b
  project_name = var.project_name
}

#-- natgw ----------------------------------

module "create_natgw_pub1a" {
  source        = "../modules/network/natgw"
  subnet_pub_id = module.create_subnet_pub1a.subnet_id
  subnet_name   = var.subnet_name_pub1a
  project_name  = var.project_name
}

module "create_natgw_pub1b" {
  source        = "../modules/network/natgw"
  subnet_pub_id = module.create_subnet_pub1b.subnet_id
  subnet_name   = var.subnet_name_pub1b
  project_name  = var.project_name
}

#-- Route table ------------------------------------

#-- route to internet --

module "create_public_rt" {
  source         = "../modules/network/public_route"
  internet_gw_id = module.create_vpc.internet_gateway_id
  project_name   = var.project_name
  vpc_id         = module.create_vpc.vpc_id
}

module "create_association_rt_pub1a" {
  source    = "../modules/network/route_association"
  subnet_id = module.create_subnet_pub1a.subnet_id
  rt_id     = module.create_public_rt.route_table_id
}

module "create_association_rt_pub1b" {
  source    = "../modules/network/route_association"
  subnet_id = module.create_subnet_pub1b.subnet_id
  rt_id     = module.create_public_rt.route_table_id
}

#-- route to nat-gateway --

module "create_private_rt_a" {
  source       = "../modules/network/private_route"
  ntgw_id      = module.create_natgw_pub1a.natgw_id
  project_name = var.project_name
  vpc_id       = module.create_vpc.vpc_id
}

module "create_private_rt_b" {
  source       = "../modules/network/private_route"
  ntgw_id      = module.create_natgw_pub1b.natgw_id
  project_name = var.project_name
  vpc_id       = module.create_vpc.vpc_id
}

module "create_association_rt_priv1a" {
  source    = "../modules/network/route_association"
  subnet_id = module.create_subnet_priv1a.subnet_id
  rt_id     = module.create_private_rt_a.route_table_id
}

module "create_association_rt_priv1b" {
  source    = "../modules/network/route_association"
  subnet_id = module.create_subnet_priv1b.subnet_id
  rt_id     = module.create_private_rt_b.route_table_id
}

module "create_association_rt_priv2a" {
  source    = "../modules/network/route_association"
  subnet_id = module.create_subnet_priv2a.subnet_id
  rt_id     = module.create_private_rt_a.route_table_id
}

module "create_association_rt_priv2b" {
  source    = "../modules/network/route_association"
  subnet_id = module.create_subnet_priv2b.subnet_id
  rt_id     = module.create_private_rt_b.route_table_id
}
