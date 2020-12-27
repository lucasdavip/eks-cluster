output "vpc_cidr_block" {
  value = module.create_vpc.vpc_cidr_block
}

output "vpc_id" {
  value = module.create_vpc.vpc_id
}

output "subnet_id_pub1a" {
  value = module.create_subnet_pub1a.subnet_id
}

output "subnet_id_pub1b" {
  value = module.create_subnet_pub1b.subnet_id
}

output "subnet_id_priv1a" {
  value = module.create_subnet_priv1a.subnet_id
}

output "subnet_id_priv1b" {
  value = module.create_subnet_priv1b.subnet_id
}

output "subnet_id_priv2a" {
  value = module.create_subnet_priv2a.subnet_id
}

output "subnet_id_priv2b" {
  value = module.create_subnet_priv2b.subnet_id
}
