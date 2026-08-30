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
moved {
  from = aws_s3_bucket.lab
  to   = module.storage.aws_s3_bucket.lab
}

moved {
  from = aws_s3_bucket_versioning.lab
  to   = module.storage.aws_s3_bucket_versioning.lab
}

moved {
  from = aws_s3_bucket_server_side_encryption_configuration.lab
  to   = module.storage.aws_s3_bucket_server_side_encryption_configuration.lab
}

moved {
  from = aws_s3_bucket_public_access_block.lab
  to   = module.storage.aws_s3_bucket_public_access_block.lab
}

moved {
  from = aws_s3_bucket_ownership_controls.lab
  to   = module.storage.aws_s3_bucket_ownership_controls.lab
}

moved {
  from = aws_s3_bucket_policy.lab
  to   = module.storage.aws_s3_bucket_policy.lab
}
