terraform {
  required_version = ">= 1.0.0"

  required_providers {
    databricks = {
      source  = "databricks/databricks"
      version = ">= 1.29.0"
    }
  }
}

# PROVIDER DATABRICKS
provider "databricks" {
  alias = "az-adb"
  host  = var.databricks_workspace_url
}

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