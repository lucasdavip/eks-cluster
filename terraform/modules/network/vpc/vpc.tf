# VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name    = var.env
    project = var.project_name
  }
}

resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name    = var.env
    project = var.project_name
  }
  depends_on = [aws_vpc.vpc]
}
