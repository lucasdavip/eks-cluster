output "vpc_cidr_block" {
  value = module.create_vpc.vpc_cidr_block
}

output "vpc_id" {
  value = module.create_vpc.vpc_id
}

output "subnet_id_pub1a" {
  value = module.create_subnet_pub1a.subnet_id
}
