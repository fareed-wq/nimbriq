output "bucket_id" {
  description = "Name/ID of the S3 lab bucket"
  value       = aws_s3_bucket.lab.id
}

output "bucket_arn" {
  description = "ARN of the S3 lab bucket"
  value       = aws_s3_bucket.lab.arn
}

output "ansible_transfer_bucket_id" {
  description = "Name of the temporary Ansible SSM transfer bucket"
  value       = aws_s3_bucket.ansible_transfer.id
}
