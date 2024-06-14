resource "azurerm_service_plan" "service_plan" {
  name                = "func-${var.prefix_name}-${terraform.workspace}-service-plan"
  location            = var.resource_group_location
  resource_group_name = var.resource_group_name
  os_type             = "Linux"
  sku_name            = "Y1"
}

resource "azurerm_linux_function_app" "function_app" {
  name                       = "func-${var.prefix_name}-${terraform.workspace}"
  resource_group_name        = var.resource_group_name
  location                   = var.resource_group_location
  service_plan_id        = azurerm_service_plan.service_plan.id
  storage_account_name       = var.storage_account_dados_name
  storage_account_access_key = var.storage_account_dados_primary_access_key
  site_config {}

  tags = {
    ambiente = terraform.workspace
    owner = var.owner
    managed_by = var.managed_by
  }
}