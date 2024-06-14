output "databricks_metastore" {
    value = databricks_metastore.metastore
}

output "group_data_engineers" {
    value = databricks_group.data_engineers.display_name
}

output "group_data_analysts" {
    value = databricks_group.data_analysts.display_name
}

output "group_metastore_owners" {
    value = databricks_group.metastore_owners.display_name
}

output "group_data_governance" {
    value = databricks_group.data_governance.display_name
}

output "databricks_metastore_id" {
    value = databricks_metastore.metastore.id
}
