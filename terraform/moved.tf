moved {
  from = aws_vpc.nimbriq
  to   = module.network.aws_vpc.nimbriq
}