moved {
  from = aws_vpc.nimbriq
  to   = module.network.aws_vpc.nimbriq
}
moved {
  from = aws_subnet.public_1
  to   = module.network.aws_subnet.public_1
}

moved {
  from = aws_subnet.private_1
  to   = module.network.aws_subnet.private_1
}
