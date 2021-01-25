resource "aws_route_table" "rt_nat" {
  vpc_id = var.vpc_id

  tags = {
    Name    = "private_RT"
    project = var.project
  }
}

resource "aws_route" "route" {
  route_table_id         = aws_route_table.rt_nat.id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = var.ntgw_id
  depends_on             = [aws_route_table.rt_nat]
}
