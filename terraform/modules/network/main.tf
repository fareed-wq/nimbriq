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
resource "aws_internet_gateway" "nimbriq" {
  vpc_id = aws_vpc.nimbriq.id

  tags = {
    Name = "nimbriq-igw"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.nimbriq.id

  tags = {
    Name = "nimbriq-public-rt"
  }
}

resource "aws_route_table" "private" {
  vpc_id = aws_vpc.nimbriq.id

  tags = {
    Name = "nimbriq-private-rt"
  }
}

resource "aws_route" "public_internet" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.nimbriq.id
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public_1.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "private" {
  subnet_id      = aws_subnet.private_1.id
  route_table_id = aws_route_table.private.id
}
