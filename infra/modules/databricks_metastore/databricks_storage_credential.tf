# CRIANDO A STORAGE CREDENTIAL
resource "databricks_storage_credential" "metastore" {
  provider     = databricks.az-adb
  metastore_id = var.metastore_id
  name         = "credential_${terraform.workspace}"
  owner        = data.databricks_group.group_metastore_owners.display_name
  azure_managed_identity {
    access_connector_id = var.access_connector_id
  }
  comment = "Managed by TF"

  depends_on = [
    databricks_metastore_assignment.metastore_workspace,
    databricks_grants.metastore
  ]
}

# PERMISSÃO A STORAGE CREDENTIAL
resource "databricks_grants" "storage_credential" {
  provider           = databricks.az-adb
  storage_credential = databricks_storage_credential.metastore.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_storage_credential.metastore
  ]
}