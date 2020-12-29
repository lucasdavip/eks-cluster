resource "aws_route_table" "rt_internet" {
  vpc_id = var.vpc_id

  tags = {
    project = var.project_name
  }
}

resource "aws_route" "route" {
  route_table_id         = aws_route_table.rt_internet.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = var.internet_gw_id
  depends_on             = [aws_route_table.rt_internet]
}
