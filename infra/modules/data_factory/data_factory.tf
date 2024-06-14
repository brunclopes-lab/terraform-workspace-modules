# CRIAÇÃO DO ADF
resource "azurerm_data_factory" "az_datafactory" {
  name                = "adf-${var.prefix_name}-${terraform.workspace}"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name

  identity {
    type = "SystemAssigned"
  }

  tags = {
    ambiente   = terraform.workspace
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIAÇÃO DO LINKED SERVICE KEY VAULT
resource "azurerm_data_factory_linked_service_key_vault" "kv_lk" {
  name            = "ls_keyvault"
  data_factory_id = azurerm_data_factory.az_datafactory.id
  key_vault_id    = var.key_vault_id
}