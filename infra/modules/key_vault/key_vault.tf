# CRIAÇÃO DO RECURSO KEY VAULT
resource "azurerm_key_vault" "az_key_vault" {
  name                       = "akv-${var.prefix_name}-${terraform.workspace}"
  location                   = var.resource_group_location
  resource_group_name        = var.resource_group_name
  sku_name                   = "standard"
  soft_delete_retention_days = 7
  tenant_id                  = data.azurerm_client_config.current.tenant_id
  purge_protection_enabled   = false
  enable_rbac_authorization  = true

  tags = {
    ambiente   = terraform.workspace
    managed_by = var.managed_by
    owner      = var.owner
  }
}
