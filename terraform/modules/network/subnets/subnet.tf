#Subnet
resource "aws_subnet" "subnet" {
  vpc_id            = var.vpc_id
  cidr_block        = var.subnet_cidr
  availability_zone = var.subnet_az

  tags = {
    Name    = var.subnet_name
    project = var.project_name
  }
}
