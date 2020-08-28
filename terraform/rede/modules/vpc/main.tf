resource "aws_vpc" "vpc_app" {
  cidr_block = var.cidr_block

  tags = {
    name = var.name
    env  = var.env
  }
}

