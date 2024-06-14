output "app_registration" {
  value = azuread_application.app_registration
}

output "secret_app_registration" {
  value = nonsensitive(azuread_application_password.secret_app_registration.value)
}

output "role_akv_user_secrets_officer" {
  value = azurerm_role_assignment.role_akv_user_secrets_officer
}

output "group_data_engineers_id" {
  value = data.azuread_group.data_engineers.id
}

output "group_data_analysts_id" {
  value = data.azuread_group.data_analysts.id
}

output "group_owners_id" {
  value = data.azuread_group.owners.id
}

output "group_metastore_owners_id" {
  value = data.azuread_group.metastore_owners.id
}