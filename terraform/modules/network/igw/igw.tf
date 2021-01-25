resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpc_id

  tags = {
    Name    = var.environment
    Project = var.project
  }
}
