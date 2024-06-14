terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.105.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.50.0"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = "1.1.1"
    }
    databricks = {
      source  = "databricks/databricks"
      version = "1.45.0"
    }
  }
}

provider "azurerm" {
  features {}
}

provider "azuredevops" {
}

# Obtém as informações de configuração do cliente do AzureRM
data "azurerm_client_config" "current" {}
data "azuread_client_config" "current" {}
data "azurerm_subscription" "core" {}

# INICIALIZANDO PROVIDER A NIVEL DE CONTA
provider "databricks" {
  alias               = "azure_account"
  host                = "https://accounts.azuredatabricks.net"
  account_id          = var.databricks_account_id
  auth_type           = "azure-client-secret"
  azure_client_id     = data.azuread_client_config.current.client_id
  azure_client_secret = var.azure_client_secret
  azure_tenant_id     = data.azuread_client_config.current.tenant_id
}