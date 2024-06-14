module "key_vault" {
  source                  = "./modules/key_vault"
  resource_group_name     = module.resource_group.resource_group_name
  resource_group_location = module.resource_group.resource_group_location
  prefix_name             = var.prefix_name
  managed_by              = var.managed_by
  owner                   = var.owner
}