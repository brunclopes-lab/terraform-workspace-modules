module "azure_ad" {
  source                   = "./modules/azure_ad"
  prefix_name              = var.prefix_name
  storage_account_unity_id = module.storage_account.storage_account_unity.id

  depends_on = [
    module.storage_account.storage_account_unity
  ]
}