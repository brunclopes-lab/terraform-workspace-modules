output "storage_account_name" {
  value = azurerm_storage_account.az_sa_terraform_state.name
}

output "primary_access_key" {
  value = nonsensitive(azurerm_storage_account.az_sa_terraform_state.primary_access_key)
}

output "secondary_access_key" {
  value = nonsensitive(azurerm_storage_account.az_sa_terraform_state.secondary_access_key)
}