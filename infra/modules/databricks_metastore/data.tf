# Obtém as informações de configuração do cliente do AzureRM
data "azurerm_client_config" "current" {}
data "azuread_client_config" "current" {}
data "azurerm_subscription" "core" {}


data "databricks_group" "group_metastore_owners" {
  provider     = databricks.azure_account
  display_name = "group_metastore_owners"
}

data "databricks_group" "group_data_engineers" {
  provider     = databricks.azure_account
  display_name = "group_data_engineers"
}

data "databricks_group" "group_data_analysts" {
  provider     = databricks.azure_account
  display_name = "group_data_analysts"
}

data "databricks_group" "group_data_governance" {
  provider     = databricks.azure_account
  display_name = "group_data_governance"
}