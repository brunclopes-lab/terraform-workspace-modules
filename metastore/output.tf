output "databricks_metastore_id" {
  value = module.databricks_metastore.databricks_metastore_id
}

# output "databricks_sp_terraform_id" {
#   value = data.databricks_service_principal.sp_terraform.id
# }

# output "databricks_user_id" {
#   value = data.databricks_user.principal_user.id
# }