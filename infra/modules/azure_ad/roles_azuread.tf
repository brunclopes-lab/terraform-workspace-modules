# DEFININDO A ROLE DE OWNER PARA A APP REGISTRATION (SERVICE PRINCIPAL)
resource "azurerm_role_assignment" "role_app_registration" {
  scope                = data.azurerm_subscription.core.id
  role_definition_name = "User Access Administrator"
  principal_id         = azuread_service_principal.service_principal.object_id
}

# ROLES DATA LAKE UNITY 
# LIBERANDO ACESSO AO DATALAKE PARA O SERVICE PRINCIPAL
resource "azurerm_role_assignment" "role_adls_unity_service_principal" {
  scope                = var.storage_account_unity_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_service_principal.service_principal.object_id
}

# ROLES DATA LAKE DADOS 
# LIBERANDO ACESSO AO DATALAKE PARA O SERVICE PRINCIPAL
resource "azurerm_role_assignment" "role_adls_dados_service_principal" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = azuread_service_principal.service_principal.object_id
}

# LIBERANDO ACESSO AO DATA LAKE PARA O USUARIO DO AZ CLI
resource "azurerm_role_assignment" "role_adls_dados_user_az_cli" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azurerm_client_config.current.object_id
}

# LIBERANDO ACESSO AO DATALAKE PARA OS GRUPOS
resource "azurerm_role_assignment" "role_adls_dados_data_analysts" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azuread_group.data_analysts.id
}

resource "azurerm_role_assignment" "role_adls_dados_data_engineers" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azuread_group.data_engineers.id
}

resource "azurerm_role_assignment" "role_adls_dados_owners" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azuread_group.owners.id
}

resource "azurerm_role_assignment" "role_adls_dados_metastore_owners" {
  scope                = var.storage_account_dados_id
  role_definition_name = "Storage Blob Data Contributor"
  principal_id         = data.azuread_group.metastore_owners.id
}


# ROLES KEY VAULT
# LIBERANDO ACESSO A KEY VAULT VIA RBAC PARA A APP REGISTRATION (SERVICE PRINCIPAL) 
resource "azurerm_role_assignment" "role_akv_sp_secrets_officer" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = azuread_service_principal.service_principal.object_id
}

# LIBERANDO ACESSO A KEY VAULT VIA RBAC PARA O USUARIO DO AZ CLI
resource "azurerm_role_assignment" "role_akv_user_secrets_officer" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azurerm_client_config.current.object_id
}

# LIBERANDO ACESSO AS KEY VAULTS PARA OS GRUPOS
resource "azurerm_role_assignment" "role_akv_data_analysts_secrets_officer" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azuread_group.data_analysts.id
}

resource "azurerm_role_assignment" "role_akv_data_engineer_secrets_officer" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azuread_group.data_engineers.id
}

resource "azurerm_role_assignment" "role_akv_owners_secrets_officer" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azuread_group.owners.id
}

resource "azurerm_role_assignment" "role_akv_metastore_owners_secrets_officer" {
  scope                = var.key_vault_id
  role_definition_name = "Key Vault Secrets Officer"
  principal_id         = data.azuread_group.metastore_owners.id
}