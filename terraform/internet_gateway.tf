resource "aws_internet_gateway" "nimbriq" {
  vpc_id = aws_vpc.nimbriq.id

  tags = {
    Name = "nimbriq-igw"
  }
}
