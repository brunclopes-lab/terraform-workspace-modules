terraform {
  required_version = ">= 1.0.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.100.0"
    }
    azuredevops = {
      source  = "microsoft/azuredevops"
      version = ">= 1.1.1"
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