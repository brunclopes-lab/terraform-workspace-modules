# CRIANDO CATALOGO
resource "databricks_catalog" "catalog" {
  provider     = databricks.az-adb
  metastore_id = var.metastore_id
  name         = "catalog_${terraform.workspace}"
  storage_root = databricks_external_location.catalog.url
  owner        = data.databricks_group.group_metastore_owners.display_name
  comment      = "this catalog is managed by terraform"

  depends_on = [
    databricks_metastore_assignment.metastore_workspace
  ]
}

# CONCEDENDO PERMISSÕES AO CATALOGO
resource "databricks_grants" "grant_catalog" {
  provider = databricks.az-adb
  catalog  = databricks_catalog.catalog.name
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES", "EXECUTE", "MODIFY", "SELECT", "USE_SCHEMA", "USE_CATALOG"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES", "EXECUTE", "MODIFY", "SELECT", "USE_SCHEMA", "USE_CATALOG"]
  }
  grant {
    principal  = data.databricks_group.group_data_analysts.display_name
    privileges = ["ALL_PRIVILEGES", "EXECUTE", "MODIFY", "SELECT", "USE_SCHEMA", "USE_CATALOG"]
  }
  grant {
    principal  = data.databricks_group.group_data_governance.display_name
    privileges = ["ALL_PRIVILEGES", "EXECUTE", "MODIFY", "SELECT", "USE_SCHEMA", "USE_CATALOG"]
  }
  depends_on = [
    databricks_catalog.catalog
  ]
}