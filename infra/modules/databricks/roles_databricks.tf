# LIBERANDO ACESSO AO DATA LAKE DE DADOS PARA O AZUREDATABRICKS - SERVICE PRINCIPAL 
resource "azurerm_role_assignment" "role_adls_dados_dbw" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.sp_databricks_id

}

# LIBERANDO ACESSO A KEY VAULT PARA O AZURE DATABRICKS 
resource "azurerm_role_assignment" "role_akv_dbw_secrets_user" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = var.sp_databricks_id
}