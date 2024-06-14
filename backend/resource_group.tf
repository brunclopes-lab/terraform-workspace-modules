# CRIAÇÃO DO GRUPO DE RECURSOS 
resource "azurerm_resource_group" "rg_terraform_state" {
  name     = "rg-terraform-state"
  location = "East US 2"

  tags = {
    managed_by = var.managed_by
    owner      = var.owner
  }
}