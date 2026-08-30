resource "aws_internet_gateway" "nimbriq" {
  vpc_id = module.network.vpc_id

  tags = {
    Name = "nimbriq-igw"
  }
}
