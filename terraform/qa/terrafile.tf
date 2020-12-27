module "create_vpc" {
  source       = "../modules/vpc"
  cidr_block   = var.cidr_block
  env          = var.env
  project_name = var.project_name
}
