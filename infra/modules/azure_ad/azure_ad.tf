# CRIAÇÃO DA APP REGISTRATION
resource "azuread_application" "app_registration" {
  display_name = "app-${var.prefix_name}-${terraform.workspace}"
  prevent_duplicate_names = true
}

# DEFININDO OWNER PARA A APP REGISTRATION
resource "azuread_application_owner" "app_registration" {
  application_id  = azuread_application.app_registration.id
  owner_object_id = data.azuread_client_config.current.object_id
}

# CRIAÇÃO DO SERVICE PRINCIPAL
resource "azuread_service_principal" "service_principal" {
  client_id = azuread_application.app_registration.client_id
  owners    = [data.azuread_client_config.current.object_id]
}

# DEFININDO DIAS PARA A EXPIRAÇÃO DA CLIENT SECRET
resource "time_rotating" "year" {
  rotation_days = 365
}

# CRIAÇÃO DA SECRET DA APP REGISTRATION
resource "azuread_application_password" "secret_app_registration" {
  display_name   = "secret-app-registration-${var.prefix_name}-001"
  application_id = azuread_application.app_registration.id
  rotate_when_changed = {
    rotation = time_rotating.year.id
  }
}