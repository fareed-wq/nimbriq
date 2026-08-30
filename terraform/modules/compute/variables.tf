variable "vpc_id" {
  description = "VPC ID for the web security group"
  type        = string
}

variable "public_subnet_id" {
  description = "Public subnet ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR allowed to access SSH"
  type        = string
}