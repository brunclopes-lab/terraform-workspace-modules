output "storage_account_dados" {
  value = azurerm_storage_account.az_sa
}

output "storage_account_unity" {
  value = data.azurerm_storage_account.az_sa_unity
}