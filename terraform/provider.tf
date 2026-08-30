provider "aws" {
  region  = "eu-central-1"
  profile = "nimbriq"

  default_tags {
    tags = {
      Project   = "Nimbriq"
      ManagedBy = "Terraform"
    }
  }
}
