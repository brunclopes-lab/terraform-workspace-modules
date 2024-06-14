module "access_connector" {
  source                   = "./modules/access_connector"
  resource_group_name      = module.resource_group.resource_group_name
  resource_group_location  = module.resource_group.resource_group_location
  prefix_name              = var.prefix_name
  managed_by               = var.managed_by
  owner                    = var.owner
  storage_account_dados_id = module.storage_account.storage_account_dados.id
  storage_account_unity_id = module.storage_account.storage_account_unity.id
}