output "vpc_id" {
  description = "ID of the Nimbriq VPC"
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

output "web_instance_id" {
  description = "ID of the Nimbriq web EC2 instance"
  value       = aws_instance.web.id
}

output "web_security_group_id" {
  description = "ID of the web server security group"
  value       = aws_security_group.web.id
}

output "lab_bucket_name" {
  description = "Name of the Nimbriq S3 lab bucket"
  value       = aws_s3_bucket.lab.id
}
