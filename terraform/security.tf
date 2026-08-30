module "security" {
  source = "./modules/security"

  bucket_arn = module.storage.bucket_arn
}