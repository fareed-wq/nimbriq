module "storage" {
  source = "./modules/storage"

  bucket_name                  = var.lab_bucket_name
  ansible_transfer_bucket_name = "${var.lab_bucket_name}-ansible-transfer"
}
