resource "aws_route_table" "public" {
  vpc_id = module.network.vpc_id

  tags = {
    Name = "nimbriq-public-rt"
  }
}

resource "aws_route_table" "private" {
  vpc_id = module.network.vpc_id

  tags = {
    Name = "nimbriq-private-rt"
  }
}
