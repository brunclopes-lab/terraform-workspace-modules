# ROLES DATA LAKE UNITY 

# LIBERANDO ACESSO AO DATA LAKE PARA O USUARIO DO AZ CLI
resource "azurerm_role_assignment" "role_adls_unity_user_az_cli" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azurerm_client_config.current.object_id
}

# LIBERANDO ACESSO AO DATALAKE PARA OS GRUPOS
resource "azurerm_role_assignment" "role_adls_unity_data_analysts" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_group.data_analysts.id
}

resource "azurerm_role_assignment" "role_adls_unity_data_engineers" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_group.data_engineers.id
}

resource "azurerm_role_assignment" "role_adls_unity_owners" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_group.owners.id
}

resource "azurerm_role_assignment" "role_adls_unity_metastore" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_group.metastore_owners.id
}