provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project   = "Nimbriq"
      ManagedBy = "Terraform"
    }
  }
}
