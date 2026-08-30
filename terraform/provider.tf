provider "aws" {
  region  = var.aws_region
  profile = "nimbriq"

  default_tags {
    tags = {
      Project   = "Nimbriq"
      ManagedBy = "Terraform"
    }
  }
}
