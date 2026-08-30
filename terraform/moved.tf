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
moved {
  from = aws_internet_gateway.nimbriq
  to   = module.network.aws_internet_gateway.nimbriq
}

moved {
  from = aws_route_table.public
  to   = module.network.aws_route_table.public
}

moved {
  from = aws_route_table.private
  to   = module.network.aws_route_table.private
}

moved {
  from = aws_route.public_internet
  to   = module.network.aws_route.public_internet
}

moved {
  from = aws_route_table_association.public
  to   = module.network.aws_route_table_association.public
}

moved {
  from = aws_route_table_association.private
  to   = module.network.aws_route_table_association.private
}
moved {
  from = aws_security_group.web
  to   = module.compute.aws_security_group.web
}

moved {
  from = aws_vpc_security_group_ingress_rule.web_http
  to   = module.compute.aws_vpc_security_group_ingress_rule.web_http
}

moved {
  from = aws_vpc_security_group_ingress_rule.web_ssh
  to   = module.compute.aws_vpc_security_group_ingress_rule.web_ssh
}

moved {
  from = aws_vpc_security_group_egress_rule.web_all
  to   = module.compute.aws_vpc_security_group_egress_rule.web_all
}

moved {
  from = aws_instance.web
  to   = module.compute.aws_instance.web
}
