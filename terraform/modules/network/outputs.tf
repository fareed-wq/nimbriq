output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.nimbriq.id
}
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public_1.id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = aws_subnet.private_1.id
}
output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = aws_internet_gateway.nimbriq.id
}
