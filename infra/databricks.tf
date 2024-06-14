module "databricks" {
  source                                 = "./modules/databricks"
  resource_group_name                    = module.resource_group.resource_group_name
  resource_group_location                = module.resource_group.resource_group_location
  prefix_name                            = var.prefix_name
  managed_by                             = var.managed_by
  owner                                  = var.owner
  storage_account_dados_id               = module.storage_account.storage_account_dados.id
  storage_account_unity_id               = module.storage_account.storage_account_unity.id
  key_vault_id                           = module.key_vault.key_vault_id
  sp_databricks_id                       = data.azuread_service_principal.sp_azuredatabricks.id
  databricks_group_data_governance_name  = module.databricks_metastore.group_data_governance
  databricks_group_metastore_owners_name = module.databricks_metastore.group_metastore_owners
  databricks_group_data_analysts_name    = module.databricks_metastore.group_data_analysts
  databricks_group_data_engineers_name   = module.databricks_metastore.group_data_engineers
}