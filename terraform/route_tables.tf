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
