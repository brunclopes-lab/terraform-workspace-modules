# CONCEDENDO PERMISSÃO AO METASTORE
resource "databricks_grants" "metastore" {
  provider  = databricks.az-adb
  metastore = var.metastore_id
  grant {
    principal = data.databricks_group.group_metastore_owners.display_name
    privileges = ["CREATE_CATALOG", "CREATE_EXTERNAL_LOCATION", "CREATE_CONNECTION",
      "CREATE_PROVIDER", "CREATE_SHARE", "CREATE_RECIPIENT", "USE_CONNECTION",
    "USE_PROVIDER", "USE_SHARE", "USE_RECIPIENT", "CREATE_STORAGE_CREDENTIAL"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["CREATE_CATALOG", "CREATE_EXTERNAL_LOCATION"]
  }

  depends_on = [
    databricks_metastore_assignment.metastore_workspace
  ]
}

# VINCULANDO O METASTORE AO WORKSPACE CRIADO
resource "databricks_metastore_assignment" "metastore_workspace" {
  provider     = databricks.az-adb
  workspace_id = var.databricks_workspace_id
  metastore_id = var.metastore_id
}