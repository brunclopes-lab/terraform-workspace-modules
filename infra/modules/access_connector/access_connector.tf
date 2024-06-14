# CRIANDO O ACCESS CONNECTOR PARA O UNITY
resource "azurerm_databricks_access_connector" "ac_db" {
  name                = "db-acc-conn-${var.prefix_name}-${terraform.workspace}"
  resource_group_name = var.resource_group_name
  location            = var.resource_group_location

  identity {
    type = "SystemAssigned"
  }

  tags = {
    ambiente   = terraform.workspace
    managed_by = var.managed_by
    owner      = var.owner
  }
}