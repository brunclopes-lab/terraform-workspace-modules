# output "databricks_metastore" {
#     value = data.databricks_metastore.metastore
# }

output "group_data_engineers" {
    value = data.databricks_group.group_data_engineers.display_name
}

output "group_data_analysts" {
    value = data.databricks_group.group_data_analysts.display_name
}

output "group_metastore_owners" {
    value = data.databricks_group.group_metastore_owners.display_name
}

output "group_data_governance" {
    value = data.databricks_group.group_data_governance.display_name
}