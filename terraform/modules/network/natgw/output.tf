output "eip_public_ip" {
  value = aws_eip.nat.public_ip
}

output "natgw_id" {
  value = aws_nat_gateway.natgw.id
}

output "natgw_allocation" {
  value = aws_nat_gateway.natgw.allocation_id
}

