data "azurerm_storage_account" "az_sa_unity" {
  name                = "adls${replace(var.prefix_name, "-", "")}uc${lower(replace(var.location, " ", ""))}"
  resource_group_name = "rg-${var.prefix_name}-prod"
}