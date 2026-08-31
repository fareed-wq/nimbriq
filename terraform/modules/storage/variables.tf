variable "bucket_name" {
  description = "Name of the Nimbriq S3 lab bucket"
  type        = string
}

variable "ansible_transfer_bucket_name" {
  description = "Name of the temporary S3 bucket used by Ansible SSM connections"
  type        = string
}
