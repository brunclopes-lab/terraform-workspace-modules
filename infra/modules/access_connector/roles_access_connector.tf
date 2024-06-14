# DEFININDO ROLE PARA O ACCESS CONNECTOR DO DATABRICKS - DATA LAKE DADOS
resource "azurerm_role_assignment" "role_adls_dados_ac_db" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_databricks_access_connector.ac_db.identity[0].principal_id
}


# DEFININDO ROLE PARA O ACCESS CONNECTOR DO DATABRICKS - DATA LAKE UNITY
resource "azurerm_role_assignment" "role_adls_unity_ac_db" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azurerm_databricks_access_connector.ac_db.identity[0].principal_id
}