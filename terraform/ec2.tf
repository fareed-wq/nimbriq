resource "aws_instance" "web" {
  ami           = "ami-0f417677f9bf398c1"
  instance_type = "t3.micro"

  subnet_id              = aws_subnet.public_1.id
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
