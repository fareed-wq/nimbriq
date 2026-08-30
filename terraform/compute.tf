module "compute" {
  source = "./modules/compute"

  vpc_id               = module.network.vpc_id
  public_subnet_id     = module.network.public_subnet_id
  instance_type        = var.instance_type
  iam_instance_profile = module.security.instance_profile_name
}