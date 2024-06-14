# CRIAÇÃO DE GRUPOS NO AAD
resource "azuread_group" "data_analysts" {
  display_name     = "data_analysts"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
  prevent_duplicate_names = true
}

# CRIAÇÃO DE GRUPOS NO AAD
resource "azuread_group" "data_engineers" {
  display_name     = "data_engineers"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
  prevent_duplicate_names = true
}

# CRIAÇÃO DE GRUPOS NO AAD
resource "azuread_group" "owners" {
  display_name     = "owners"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
  prevent_duplicate_names = true
}

# CRIAÇÃO DE GRUPOS NO AAD
resource "azuread_group" "metastore_owners" {
  display_name     = "metastore_owners"
  owners           = [data.azuread_client_config.current.object_id]
  security_enabled = true
  prevent_duplicate_names = true
}