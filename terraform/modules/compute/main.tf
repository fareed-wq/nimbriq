resource "aws_security_group" "web" {
  name        = "nimbriq-web-sg"
  description = "Security group for Nimbriq public web server"
  vpc_id      = var.vpc_id

  tags = {
    Name = "nimbriq-web-sg"
  }
}

resource "aws_vpc_security_group_ingress_rule" "web_http" {
  security_group_id = aws_security_group.web.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_ingress_rule" "web_ssh" {
  security_group_id = aws_security_group.web.id

  cidr_ipv4   = var.ssh_allowed_cidr
  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "web_all" {
  security_group_id = aws_security_group.web.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0f417677f9bf398c1"
  instance_type = var.instance_type

  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [aws_security_group.web.id]

  key_name             = "nimbriq-web-key"
  iam_instance_profile = "nimbriq-ec2-s3-role"

  monitoring        = false
  source_dest_check = true

  user_data = file("${path.module}/user_data.sh")

  metadata_options {
    http_endpoint               = "enabled"
    http_tokens                 = "required"
    http_put_response_hop_limit = 2
    http_protocol_ipv6          = "disabled"
    instance_metadata_tags      = "disabled"
  }

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    iops                  = 3000
    throughput            = 125
    encrypted             = true
    delete_on_termination = true
  }

  tags = {
    Name = "nimbriq-web-1"
  }
}