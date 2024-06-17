# CRIAÇÃO DOS GRUPOS DE RECURSOS 
resource "azurerm_resource_group" "az_rg_prd" {
  name     = "rg-${var.prefix_name}-prd"
  location = var.location

  tags = {
    ambiente   = "prd"
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