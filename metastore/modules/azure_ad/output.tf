output "azuread_group_data_analysts_id" {
  value = azuread_group.data_analysts.id
}

output "azuread_group_data_engineers_id" {
  value = azuread_group.data_engineers.id
}

output "azuread_group_owners_id" {
  value = azuread_group.owners.id
}

output "azuread_group_metastore_owners_id" {
  value = azuread_group.metastore_owners.id
}