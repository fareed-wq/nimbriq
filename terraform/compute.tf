module "compute" {
  source = "./modules/compute"

  vpc_id               = module.network.vpc_id
  public_subnet_id     = module.network.public_subnet_id
  instance_type        = var.instance_type
  ssh_allowed_cidr     = var.ssh_allowed_cidr
  iam_instance_profile = module.security.instance_profile_name
}