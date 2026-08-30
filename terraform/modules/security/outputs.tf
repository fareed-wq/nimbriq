output "instance_profile_name" {
  description = "IAM instance profile used by the EC2 instance"
  value       = aws_iam_instance_profile.ec2_s3.name
}