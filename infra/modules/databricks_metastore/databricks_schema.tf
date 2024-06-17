# CRIANDO SCHEMAS
resource "databricks_schema" "controller" {
  provider     = databricks.az-adb
  catalog_name = databricks_catalog.catalog.id
  storage_root = databricks_external_location.controller.url
  name         = "controller"
  owner        = data.databricks_group.group_metastore_owners.display_name
  comment      = "this database is managed by terraform"

  depends_on = [
  ]
}

resource "databricks_schema" "transient" {
  provider     = databricks.az-adb
  catalog_name = databricks_catalog.catalog.id
  storage_root = databricks_external_location.transient.url
  name         = "transient"
  owner        = data.databricks_group.group_metastore_owners.display_name
  comment      = "this database is managed by terraform"

  depends_on = [
  ]
}

# CRIANDO SCHEMAS 
resource "databricks_schema" "bronze" {
  provider     = databricks.az-adb
  catalog_name = databricks_catalog.catalog.id
  storage_root = databricks_external_location.bronze.url
  name         = "bronze"
  owner        = data.databricks_group.group_metastore_owners.display_name
  comment      = "this database is managed by terraform"

  depends_on = [
  ]
}

resource "databricks_schema" "silver" {
  provider     = databricks.az-adb
  catalog_name = databricks_catalog.catalog.id
  storage_root = databricks_external_location.silver.url
  name         = "silver"
  owner        = data.databricks_group.group_metastore_owners.display_name
  comment      = "this database is managed by terraform"

  depends_on = [
  ]
}

resource "databricks_schema" "gold" {
  provider     = databricks.az-adb
  catalog_name = databricks_catalog.catalog.id
  storage_root = databricks_external_location.gold.url
  name         = "gold"
  owner        = data.databricks_group.group_metastore_owners.display_name
  comment      = "this database is managed by terraform"

  depends_on = [
  ]
}

# CONCEDENDO PERMISSÕES AO SCHEMA CONTROLLER
resource "databricks_grants" "grant_controller" {
  provider = databricks.az-adb
  schema   = databricks_schema.controller.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_analysts.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_governance.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_schema.controller
  ]
}

# CONCEDENDO PERMISSÕES AO SCHEMA TRANSIENT
resource "databricks_grants" "grant_transient" {
  provider = databricks.az-adb
  schema   = databricks_schema.transient.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_analysts.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_governance.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_schema.transient
  ]
}

# CONCEDENDO PERMISSÕES AO SCHEMA BRONZE
resource "databricks_grants" "grant_bronze" {
  provider = databricks.az-adb
  schema   = databricks_schema.bronze.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_analysts.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_governance.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_schema.bronze
  ]
}

# CONCEDENDO PERMISSÕES AO SCHEMA SILVER
resource "databricks_grants" "grant_silver" {
  provider = databricks.az-adb
  schema   = databricks_schema.silver.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_analysts.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_governance.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_schema.silver
  ]
}

# CONCEDENDO PERMISSÕES AO SCHEMA GOLD
resource "databricks_grants" "grant_gold" {
  provider = databricks.az-adb
  schema   = databricks_schema.gold.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_analysts.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_governance.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_schema.gold
  ]
}