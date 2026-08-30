output "web_instance_id" {
  description = "ID of the web EC2 instance"
  value       = aws_instance.web.id
}

output "web_security_group_id" {
  description = "ID of the web security group"
  value       = aws_security_group.web.id
}