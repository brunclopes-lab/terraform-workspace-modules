output "resource_group_name" {
  value = data.azurerm_resource_group.az_rg.name
}

output "resource_group_location" {
  value = data.azurerm_resource_group.az_rg.location
}