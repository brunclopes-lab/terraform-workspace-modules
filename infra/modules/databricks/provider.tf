terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.100.0"
    }
    databricks = {
      source  = "databricks/databricks"
      version = ">= 1.29.0"
    }
  }
}

provider "azurerm" {
  features {}
}

# Obtém as informações de configuração do cliente do AzureRM
data "azurerm_client_config" "current" {}
data "azuread_client_config" "current" {}
data "azurerm_subscription" "core" {}

# PROVIDER DATABRICKS
provider "databricks" {
  alias = "az-adb"
  host  = azurerm_databricks_workspace.az_dbs.workspace_url
}