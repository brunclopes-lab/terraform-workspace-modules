# Obtém as informações de configuração do cliente do AzureRM
data "azurerm_client_config" "current" {}
data "azuread_client_config" "current" {}
data "azurerm_subscription" "core" {}

data "azuread_group" "data_analysts" {
  display_name     = "data_analysts"
  security_enabled = true
}

data "azuread_group" "data_engineers" {
  display_name     = "data_engineers"
  security_enabled = true
}

data "azuread_group" "owners" {
  display_name     = "owners"
  security_enabled = true
}

data "azuread_group" "metastore_owners" {
  display_name     = "metastore_owners"
  security_enabled = true
}