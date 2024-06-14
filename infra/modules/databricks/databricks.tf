# CRIA O WORKSPACE DATABRICKS
resource "azurerm_databricks_workspace" "az_dbs" {
  name                          = "dbw-${var.prefix_name}-${terraform.workspace}"
  resource_group_name           = var.resource_group_name
  location                      = var.resource_group_location
  sku                           = "premium"
  public_network_access_enabled = true
  managed_resource_group_name   = "mnrg-dbw-${var.prefix_name}-${terraform.workspace}"

  custom_parameters {
    storage_account_name     = "dbwfs${replace(var.prefix_name, "-", "")}${replace(terraform.workspace, "-", "")}"
    storage_account_sku_name = "Standard_GRS"
  }

  tags = {
    ambiente   = terraform.workspace
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIAÇÃO DO CLUSTER
resource "databricks_cluster" "single_node" {
  provider                = databricks.az-adb
  cluster_name            = "cluster-${var.prefix_name}-${terraform.workspace}"
  spark_version           = "13.3.x-scala2.12"
  node_type_id            = "Standard_F4"
  data_security_mode      = "SINGLE_USER"
  autotermination_minutes = 10
  is_pinned               = true

  autoscale {
    min_workers = 1
    max_workers = 1
  }

  spark_conf = {
    "spark.databricks.delta.schema.autoMerge.enabled" : "true"
    "spark.cleaner.periodicGC.interval" : "10"
  }

  spark_env_vars = {
    liquid_cluster = 1
    environment    = terraform.workspace
  }

  library {
    pypi {
      package = "Faker==22.5.1"
    }
  }

  custom_tags = {
    ambiente   = terraform.workspace
    managed_by = var.managed_by
    owner      = var.owner
  }

  depends_on = [azurerm_databricks_workspace.az_dbs]
}

resource "databricks_sql_endpoint" "cluster_sql_endpoint" {
  provider             = databricks.az-adb
  name                 = "cluster-warehouse-${var.prefix_name}-${terraform.workspace}"
  cluster_size         = "X-Small"
  spot_instance_policy = "COST_OPTIMIZED"
  min_num_clusters     = 1
  max_num_clusters     = 1
  auto_stop_mins       = 10
  warehouse_type       = "PRO"

  timeouts {
    create = "30m"
  }

  depends_on = [azurerm_databricks_workspace.az_dbs]
}

# # Concedendo permissões ao cluster all purpose 
# resource "databricks_permissions" "cluster_all_purpose" {
#   provider             = databricks.azure_account
#   cluster_id = databricks_cluster.single_node.id

#   access_control {
#     group_name       = var.databricks_group_data_governance_name
#     permission_level = "CAN_MANAGE"
#   }

#   access_control {
#     group_name       = var.databricks_group_data_analysts_name
#     permission_level = "CAN_MANAGE"
#   }

#   access_control {
#     group_name       = var.databricks_group_data_engineers_name
#     permission_level = "CAN_MANAGE"
#   }

#   access_control {
#     group_name       = var.databricks_group_metastore_owners_name
#     permission_level = "CAN_MANAGE"
#   }
# }

# # Concedendo permissões ao cluster warehouse 
# resource "databricks_permissions" "cluster_warehouse" {
#   provider             = databricks.azure_account
#   cluster_id = databricks_sql_endpoint.cluster_sql_endpoint.id

#   access_control {
#     group_name       = var.databricks_group_data_governance_name
#     permission_level = "CAN_MANAGE"
#   }

#   access_control {
#     group_name       = var.databricks_group_data_analysts_name
#     permission_level = "CAN_MANAGE"
#   }

#   access_control {
#     group_name       = var.databricks_group_data_engineers_name
#     permission_level = "CAN_MANAGE"
#   }

#   access_control {
#     group_name       = var.databricks_group_metastore_owners_name
#     permission_level = "CAN_MANAGE"
#   }
# }