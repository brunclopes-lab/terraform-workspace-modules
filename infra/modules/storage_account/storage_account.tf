# CRIAÇÃO DA STORAGE ACCOUNT DE DADOS
resource "azurerm_storage_account" "az_sa" {
  name                     = replace("adls${replace(var.prefix_name, "-", "")}-${terraform.workspace}", "-", "")
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true

  tags = {
    ambiente   = terraform.workspace
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIAÇÃO DOS CONTAINERS NO STORAGE ACCOUNT
resource "azurerm_storage_container" "az_containers" {
  for_each              = toset(var.sa_containers_name)
  name                  = each.value
  storage_account_name  = azurerm_storage_account.az_sa.name
  container_access_type = "private"
}
