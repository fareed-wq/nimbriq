resource "aws_vpc" "nimbriq" {
  cidr_block           = var.vpc_cidr
  instance_tenancy     = "default"
  enable_dns_support   = true
  enable_dns_hostnames = false

  tags = {
    Name = "nimbriq-vpc"
  }
}
