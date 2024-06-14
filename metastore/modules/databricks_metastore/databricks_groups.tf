# CRIANDO GRUPOS NO DATABRICKS
resource "databricks_group" "data_analysts" {
  provider              = databricks.azure_account
  display_name          = "group_data_analysts"
  allow_cluster_create  = false
  workspace_access      = true
  databricks_sql_access = true
  force                 = true

}

resource "databricks_group" "data_engineers" {
  provider              = databricks.azure_account
  display_name          = "group_data_engineers"
  allow_cluster_create  = true
  workspace_access      = true
  databricks_sql_access = true
  force                 = true

}

resource "databricks_group" "data_governance" {
  provider              = databricks.azure_account
  display_name          = "group_data_governance"
  allow_cluster_create  = false
  workspace_access      = true
  databricks_sql_access = true
  force                 = true

}

resource "databricks_group" "metastore_owners" {
  provider              = databricks.azure_account
  display_name          = "group_metastore_owners"
  allow_cluster_create  = true
  workspace_access      = true
  databricks_sql_access = true
  force                 = true

}

# INCLUINDO O USUARIO PRINCIPAL NO GRUPO DE METASTORE OWNERS
resource "databricks_group_member" "add_user_member" {
  provider  = databricks.azure_account
  group_id  = databricks_group.metastore_owners.id
  member_id = var.databricks_user_id
}

# INCLUINDO O SERVICE PRINCIPAL DO TERRAFORM NO GRUPO DE METASTORE OWNERS
resource "databricks_group_member" "add_service_principal_terraform" {
  provider  = databricks.azure_account
  group_id  = databricks_group.metastore_owners.id
  member_id = var.databricks_sp_terraform_id
}