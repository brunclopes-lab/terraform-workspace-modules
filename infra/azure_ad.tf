module "azure_ad" {
  source                   = "./modules/azure_ad"
  prefix_name              = var.prefix_name
  storage_account_dados_id = module.storage_account.storage_account_dados.id
  storage_account_unity_id = module.storage_account.storage_account_unity.id
  key_vault_id             = module.key_vault.key_vault_id

  depends_on = [
    module.key_vault.key_vault_id,
    module.storage_account.storage_account_dados,
    module.storage_account.storage_account_unity
  ]
}