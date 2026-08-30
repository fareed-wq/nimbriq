resource "aws_iam_policy" "s3_access" {
  name        = "nimbriq-s3-access-policy"
  path        = "/"
  description = "Least-privilege S3 access for the Nimbriq EC2 lab"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Sid    = "ListNimbriqBucket"
        Effect = "Allow"

        Action = [
          "s3:ListBucket",
          "s3:ListBucketVersions"
        ]

        Resource = module.storage.bucket_arn
      },
      {
        Sid    = "ReadWriteNimbriqObjects"
        Effect = "Allow"

        Action = [
          "s3:GetObject",
          "s3:GetObjectVersion",
          "s3:PutObject"
        ]

        Resource = "${module.storage.bucket_arn}/*"
      }
    ]
  })
}

resource "aws_iam_role" "ec2_s3" {
  name                 = "nimbriq-ec2-s3-role"
  path                 = "/"
  description          = "IAM role allowing Nimbriq EC2 to access its S3 lab bucket"
  max_session_duration = 3600

  assume_role_policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Principal = {
          Service = "ec2.amazonaws.com"
        }

        Action = "sts:AssumeRole"
      }
    ]
  })
}

resource "aws_iam_role_policy_attachment" "ec2_s3" {
  role       = aws_iam_role.ec2_s3.name
  policy_arn = aws_iam_policy.s3_access.arn
}

resource "aws_iam_instance_profile" "ec2_s3" {
  name = "nimbriq-ec2-s3-role"
  path = "/"
  role = aws_iam_role.ec2_s3.name
}
