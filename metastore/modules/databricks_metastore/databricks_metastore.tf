# CRIAÇÃO DO METASTORE
resource "databricks_metastore" "metastore" {
  provider = databricks.azure_account
  name     = var.metastore_name_interpolated
  storage_root = format("abfss://%s@%s.dfs.core.windows.net/${var.metastore_name_interpolated}/unity",
    "metastore",
  var.storage_account_unity_name)
  owner         = databricks_group.metastore_owners.display_name
  force_destroy = true
  region        = var.metastore_location

  depends_on = [
    databricks_group.metastore_owners,
    databricks_group_member.add_user_member
  ]
}