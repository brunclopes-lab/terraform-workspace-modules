module "storage_account" {
  source                      = "./modules/storage_account"
  resource_group_name         = module.resource_group.resource_group_name
  resource_group_location     = module.resource_group.resource_group_location
  prefix_name                 = var.prefix_name
  managed_by                  = var.managed_by
  owner                       = var.owner
  location                    = var.location
  sa_containers_name          = var.sa_containers_name
  metastore_name_interpolated = local.metastore_name_interpolated
}