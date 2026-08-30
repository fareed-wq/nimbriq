variable "aws_region" {
  description = "AWS region for Nimbriq resources"
  type        = string
  default     = "eu-central-1"
}

variable "availability_zone" {
  description = "Availability Zone used by the Nimbriq subnets"
  type        = string
  default     = "eu-central-1a"
}

variable "vpc_cidr" {
  description = "CIDR block for the Nimbriq VPC"
  type        = string
  default     = "10.0.0.0/16"

  validation {
    condition     = can(cidrnetmask(var.vpc_cidr))
    error_message = "vpc_cidr must be a valid IPv4 CIDR block."
  }
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"

  validation {
    condition     = can(cidrnetmask(var.public_subnet_cidr))
    error_message = "public_subnet_cidr must be a valid IPv4 CIDR block."
  }
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"

  validation {
    condition     = can(cidrnetmask(var.private_subnet_cidr))
    error_message = "private_subnet_cidr must be a valid IPv4 CIDR block."
  }
}

variable "instance_type" {
  description = "EC2 instance type for the Nimbriq web server"
  type        = string
  default     = "t3.micro"
}


variable "lab_bucket_name" {
  description = "Globally unique S3 bucket used by the Nimbriq lab"
  type        = string

  validation {
    condition = (
      length(var.lab_bucket_name) >= 3 &&
      length(var.lab_bucket_name) <= 63 &&
      can(regex("^[a-z0-9][a-z0-9.-]*[a-z0-9]$", var.lab_bucket_name))
    )
    error_message = "lab_bucket_name must be a valid lowercase S3 bucket name between 3 and 63 characters."
  }
}
