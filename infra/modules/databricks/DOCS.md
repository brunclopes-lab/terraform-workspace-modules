## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.100.0 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | >= 1.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.100.0 |
| <a name="provider_databricks.az-adb"></a> [databricks.az-adb](#provider\_databricks.az-adb) | >= 1.29.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_databricks_workspace.az_dbs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/databricks_workspace) | resource |
| [azurerm_role_assignment.role_adls_dados_dbw](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_dbw_secrets_user](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [databricks_cluster.single_node](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/cluster) | resource |
| [databricks_sql_endpoint.cluster_sql_endpoint](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/sql_endpoint) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.core](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_databricks_group_data_analysts_name"></a> [databricks\_group\_data\_analysts\_name](#input\_databricks\_group\_data\_analysts\_name) | grupo do databricks | `string` | n/a | yes |
| <a name="input_databricks_group_data_engineers_name"></a> [databricks\_group\_data\_engineers\_name](#input\_databricks\_group\_data\_engineers\_name) | grupo do databricks | `string` | n/a | yes |
| <a name="input_databricks_group_data_governance_name"></a> [databricks\_group\_data\_governance\_name](#input\_databricks\_group\_data\_governance\_name) | grupo do databricks | `string` | n/a | yes |
| <a name="input_databricks_group_metastore_owners_name"></a> [databricks\_group\_metastore\_owners\_name](#input\_databricks\_group\_metastore\_owners\_name) | grupo do databricks | `string` | n/a | yes |
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | id da key vault | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | tag do gerenciamento | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | tag do owner | `string` | n/a | yes |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | prefixo do ambiente | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | location do resource group | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | nome do resource group | `string` | n/a | yes |
| <a name="input_sp_databricks_id"></a> [sp\_databricks\_id](#input\_sp\_databricks\_id) | id do service principal do databricks | `string` | n/a | yes |
| <a name="input_storage_account_dados_id"></a> [storage\_account\_dados\_id](#input\_storage\_account\_dados\_id) | nome da storage account de dados | `string` | n/a | yes |
| <a name="input_storage_account_unity_id"></a> [storage\_account\_unity\_id](#input\_storage\_account\_unity\_id) | nome da storage account do unity | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_databricks_workspace"></a> [databricks\_workspace](#output\_databricks\_workspace) | n/a |
