# LIBERANDO ACESSO AO DATA LAKE DO UNITY PARA O AZUREDATABRICKS - SERVICE PRINCIPAL 
resource "azurerm_role_assignment" "role_adls_unity_dbw" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = var.sp_databricks_id
}