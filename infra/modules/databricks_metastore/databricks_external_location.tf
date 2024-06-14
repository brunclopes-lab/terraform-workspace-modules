# CRIANDO A EXTERNAL LOCATION DO CATALOGO
resource "databricks_external_location" "catalog" {
  provider = databricks.az-adb
  name     = "catalog_${terraform.workspace}"
  url = format("abfss://%s@%s.dfs.core.windows.net/${var.metastore_name_interpolated}/${terraform.workspace}",
    "metastore",
  var.storage_account_unity_name)
  owner = data.databricks_group.group_metastore_owners.display_name

  credential_name = databricks_storage_credential.metastore.id
  comment         = "Managed by TF"

  depends_on = [
  ]
}

# CRIANDO A EXTERNAL LOCATION CONTROLLER
resource "databricks_external_location" "controller" {
  provider = databricks.az-adb
  name     = "${terraform.workspace}_controller"
  url = format("abfss://%s@%s.dfs.core.windows.net/",
    "controller",
  var.storage_account_dados_name)
  owner = data.databricks_group.group_metastore_owners.display_name

  credential_name = databricks_storage_credential.metastore.id
  comment         = "Managed by TF"

  depends_on = [
  ]
}

# CRIANDO A EXTERNAL LOCATION TRANSIENT
resource "databricks_external_location" "transient" {
  provider = databricks.az-adb
  name     = "${terraform.workspace}_transient"
  url = format("abfss://%s@%s.dfs.core.windows.net/",
    "transient",
  var.storage_account_dados_name)
  owner = data.databricks_group.group_metastore_owners.display_name

  credential_name = databricks_storage_credential.metastore.id
  comment         = "Managed by TF"

  depends_on = [
  ]
}

# CRIANDO A EXTERNAL LOCATION BRONZE
resource "databricks_external_location" "bronze" {
  provider = databricks.az-adb
  name     = "${terraform.workspace}_bronze"
  url = format("abfss://%s@%s.dfs.core.windows.net/",
    "bronze",
  var.storage_account_dados_name)
  owner = data.databricks_group.group_metastore_owners.display_name

  credential_name = databricks_storage_credential.metastore.id
  comment         = "Managed by TF"

  depends_on = [
  ]
}

# CRIANDO A EXTERNAL LOCATION SILVER
resource "databricks_external_location" "silver" {
  provider = databricks.az-adb
  name     = "${terraform.workspace}_silver"
  url = format("abfss://%s@%s.dfs.core.windows.net/",
    "silver",
  var.storage_account_dados_name)
  owner = data.databricks_group.group_metastore_owners.display_name

  credential_name = databricks_storage_credential.metastore.id
  comment         = "Managed by TF"

  depends_on = [
  ]
}

# CRIANDO A EXTERNAL LOCATION GOLD
resource "databricks_external_location" "gold" {
  provider = databricks.az-adb
  name     = "${terraform.workspace}_gold"
  url = format("abfss://%s@%s.dfs.core.windows.net/",
    "gold",
  var.storage_account_dados_name)
  owner = data.databricks_group.group_metastore_owners.display_name

  credential_name = databricks_storage_credential.metastore.id
  comment         = "Managed by TF"

  depends_on = [
  ]
}

# PERMISSÃO A EXTERNAL LOCATION DO CATALOGO
resource "databricks_grants" "external_location_catalog" {
  provider          = databricks.az-adb
  external_location = databricks_external_location.catalog.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_external_location.gold,
  ]
}

# PERMISSÃO A EXTERNAL LOCATION CONTROLLER
resource "databricks_grants" "external_location_controller" {
  provider          = databricks.az-adb
  external_location = databricks_external_location.transient.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
}

# PERMISSÃO A EXTERNAL LOCATION TRANSIENT
resource "databricks_grants" "external_location_transient" {
  provider          = databricks.az-adb
  external_location = databricks_external_location.transient.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
}

# PERMISSÃO A EXTERNAL LOCATION BRONZE
resource "databricks_grants" "external_location_bronze" {
  provider          = databricks.az-adb
  external_location = databricks_external_location.bronze.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_external_location.bronze,
  ]
}

# PERMISSÃO A EXTERNAL LOCATION SILVER
resource "databricks_grants" "external_location_silver" {
  provider          = databricks.az-adb
  external_location = databricks_external_location.silver.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_external_location.silver,
  ]
}

# PERMISSÃO A EXTERNAL LOCATION GOLD
resource "databricks_grants" "external_location_gold" {
  provider          = databricks.az-adb
  external_location = databricks_external_location.gold.id
  grant {
    principal  = data.databricks_group.group_metastore_owners.display_name
    privileges = ["ALL_PRIVILEGES"]
  }
  grant {
    principal  = data.databricks_group.group_data_engineers.display_name
    privileges = ["ALL_PRIVILEGES"]
  }

  depends_on = [
    databricks_external_location.gold,
  ]
}