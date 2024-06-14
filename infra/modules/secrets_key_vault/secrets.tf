# CRIANDO SECRET COM O VALOR DO TENANT ID
resource "azurerm_key_vault_secret" "tenant_id" {
  name         = "secret-app-application-tenant-id"
  value        = data.azurerm_client_config.current.tenant_id
  key_vault_id = var.key_vault_id
}

# CRIANDO SECRET COM O VALOR DO OBJECT ID
resource "azurerm_key_vault_secret" "object_id" {
  name         = "secret-app-application-object-id"
  value        = var.app_registration_object_id
  key_vault_id = var.key_vault_id
}

# CRIANDO SECRET COM O VALOR DO CLIENT ID
resource "azurerm_key_vault_secret" "client_id" {
  name         = "secret-app-application-client-id"
  value        = var.app_registration_client_id
  key_vault_id = var.key_vault_id
}

# CRIANDO SECRET COM O VALOR DO CLIENT SECRET
resource "azurerm_key_vault_secret" "secret_value" {
  name         = "secret-app-application-secret-value"
  value        = var.secret_app_registration
  key_vault_id = var.key_vault_id
}