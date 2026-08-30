resource "aws_vpc" "nimbriq" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = false

  tags = {
    Name = "nimbriq-vpc"
  }
}
resource "aws_subnet" "public_1" {
  vpc_id                  = aws_vpc.nimbriq.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name = "nimbriq-public-1"
  }
}

resource "aws_subnet" "private_1" {
  vpc_id                  = aws_vpc.nimbriq.id
  cidr_block              = var.private_subnet_cidr
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = false

  tags = {
    Name = "nimbriq-private-1"
  }
}
