resource "aws_eip" "nat" {
  tags = {
    Name    = var.subnet_name
    Project = var.project
  }
}

resource "aws_nat_gateway" "natgw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = var.subnet_pub_id

  tags = {
    Name    = var.subnet_name
    Project = var.project
  }
  depends_on = [aws_eip.nat]
}

