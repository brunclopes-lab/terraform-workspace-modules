# CRIAÇÃO DOS GRUPOS DE RECURSOS 
resource "azurerm_resource_group" "az_rg_prod" {
  name     = "rg-${var.prefix_name}-prod"
  location = var.location

  tags = {
    ambiente   = "prod"
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIAÇÃO DOS GRUPOS DE RECURSOS 
resource "azurerm_resource_group" "az_rg_dev" {
  name     = "rg-${var.prefix_name}-dev"
  location = var.location

  tags = {
    ambiente   = "dev"
    managed_by = var.managed_by
    owner      = var.owner
  }
}