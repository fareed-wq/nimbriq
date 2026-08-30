terraform {
  backend "s3" {
    bucket       = "nimbriq-tfstate-197907147885-euc1"
    key          = "nimbriq/terraform.tfstate"
    region       = "eu-central-1"
    profile      = "nimbriq"
    encrypt      = true
    use_lockfile = true
  }
}
