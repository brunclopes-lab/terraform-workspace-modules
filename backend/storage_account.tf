# DEFININDO STRING RANDOMICA PARA A STORAGE ACCOUNT
resource "random_string" "random_terraform_state" {
  length  = 3
  special = false
  upper   = false
  numeric = true
}

# CRIANDO A STORAGE ACCOUNT DO UNITY
resource "azurerm_storage_account" "az_sa_terraform_state" {
  name                     = "adlsterraformstate${random_string.random_terraform_state.result}"
  resource_group_name      = azurerm_resource_group.rg_terraform_state.name
  location                 = azurerm_resource_group.rg_terraform_state.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  access_tier              = "Hot"
  is_hns_enabled           = true

  tags = {
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIAÇÃO DOS CONTAINERS NO STORAGE ACCOUNT DO UNITY
resource "azurerm_storage_container" "container_metastore" {
  name                  = "terraform-state"
  storage_account_name  = azurerm_storage_account.az_sa_terraform_state.name
  container_access_type = "private"
}
