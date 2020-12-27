resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_block
  tags = {
    Name    = var.env
    project = var.project_name
  }
}
