module "databricks" {
  source                   = "./modules/databricks"
  storage_account_unity_id = module.storage_account.storage_account_unity.id
  sp_databricks_id         = data.azuread_service_principal.sp_azuredatabricks.id
}