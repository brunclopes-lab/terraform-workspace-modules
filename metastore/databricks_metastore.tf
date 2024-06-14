module "databricks_metastore" {
  source                      = "./modules/databricks_metastore"
  azure_client_secret         = var.azure_client_secret
  storage_account_unity_name  = module.storage_account.storage_account_unity.name
  prefix_name                 = var.prefix_name
  managed_by                  = var.managed_by
  owner                       = var.owner
  metastore_name_interpolated = local.metastore_name_interpolated
  metastore_location          = var.metastore_location
  databricks_account_id       = var.databricks_account_id
  databricks_user_id          = var.databricks_user_id
  databricks_sp_terraform_id  = var.databricks_sp_terraform_id
}