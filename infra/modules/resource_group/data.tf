# TRAZENDO O NOME DO RESOURCE ID
data "azurerm_resource_group" "az_rg" {
  name = "rg-${var.prefix_name}-${terraform.workspace}"
}