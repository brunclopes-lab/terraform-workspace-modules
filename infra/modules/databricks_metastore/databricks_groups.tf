# CRIANDO SERVICE PRINCIPAL DO ADF 
resource "databricks_service_principal" "sp_adf" {
  provider                 = databricks.azure_account
  display_name             = "sp-adf-${var.prefix_name}-${terraform.workspace}"
  application_id           = var.azure_data_factory_principal_id
  disable_as_user_deletion = false
}

# INCLUINDO SERVICE PRINCIPAL DO ADF NO GRUPO DE METASTORE OWNERS
resource "databricks_group_member" "add_adf_member" {
  provider  = databricks.azure_account
  group_id  = data.databricks_group.group_metastore_owners.id
  member_id = databricks_service_principal.sp_adf.id
}