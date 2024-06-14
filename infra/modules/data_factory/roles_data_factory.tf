# LIBERANDO ACESSO AO DATA LAKE DADOS PARA O ADF 
resource "azurerm_role_assignment" "role_adls_dados_adf" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_data_factory.az_datafactory.identity[0].principal_id
}

# LIBERANDO ACESSO AO DATA UNITY PARA O ADF 
resource "azurerm_role_assignment" "role_adls_unity_adf" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_data_factory.az_datafactory.identity[0].principal_id
}

# LIBERANDO ACESSO A KEY VAULT PARA O ADF 
resource "azurerm_role_assignment" "role_akv_adf_secrets_user" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets User"
  principal_id         = azurerm_data_factory.az_datafactory.identity[0].principal_id
}