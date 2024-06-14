module "function_app" {
  source                                   = "./modules/function_app"
  resource_group_name                      = module.resource_group.resource_group_name
  resource_group_location                  = module.resource_group.resource_group_location
  storage_account_dados_name               = module.storage_account.storage_account_dados.name
  storage_account_dados_primary_access_key = module.storage_account.storage_account_dados.primary_access_key
  prefix_name                              = var.prefix_name
  managed_by                               = var.managed_by
  owner                                    = var.owner
}