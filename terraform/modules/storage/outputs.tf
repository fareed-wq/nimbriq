output "bucket_id" {
  description = "Name/ID of the S3 lab bucket"
  value       = aws_s3_bucket.lab.id
}

output "bucket_arn" {
  description = "ARN of the S3 lab bucket"
  value       = aws_s3_bucket.lab.arn
}