output "vpc_id" {
  description = "ID of the Nimbriq VPC"
  value       = module.network.vpc_id
}

output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = module.network.public_subnet_id
}

output "private_subnet_id" {
  description = "ID of the private subnet"
  value       = module.network.private_subnet_id
}

output "internet_gateway_id" {
  description = "ID of the Internet Gateway"
  value       = module.network.internet_gateway_id
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
