resource "aws_subnet" "subnet" {
  vpc_id                = module.vpc.vpc_id #Como receber esta variável? 
  availability_zone     = var.availability_zone
  cidr_block            = var.cidr_block
}