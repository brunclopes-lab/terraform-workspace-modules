## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | >= 1.29.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_databricks.azure_account"></a> [databricks.azure\_account](#provider\_databricks.azure\_account) | >= 1.29.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [databricks_group.data_analysts](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group) | resource |
| [databricks_group.data_engineers](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group) | resource |
| [databricks_group.data_governance](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group) | resource |
| [databricks_group.metastore_owners](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group) | resource |
| [databricks_group_member.add_service_principal_terraform](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group_member) | resource |
| [databricks_group_member.add_user_member](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/group_member) | resource |
| [databricks_metastore.metastore](https://registry.terraform.io/providers/databricks/databricks/latest/docs/resources/metastore) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.core](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_client_secret"></a> [azure\_client\_secret](#input\_azure\_client\_secret) | secret da app registration | `string` | n/a | yes |
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | ID da conta do Databricks | `string` | n/a | yes |
| <a name="input_databricks_sp_terraform_id"></a> [databricks\_sp\_terraform\_id](#input\_databricks\_sp\_terraform\_id) | ID do service principal terraform no Databricks | `string` | n/a | yes |
| <a name="input_databricks_user_id"></a> [databricks\_user\_id](#input\_databricks\_user\_id) | ID do usuario principal no Databricks | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | tag do gerenciamento | `string` | n/a | yes |
| <a name="input_metastore_location"></a> [metastore\_location](#input\_metastore\_location) | Localiza├º├úo do metastore | `string` | n/a | yes |
| <a name="input_metastore_name_interpolated"></a> [metastore\_name\_interpolated](#input\_metastore\_name\_interpolated) | nome da pasta do unity | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | tag do owner | `string` | n/a | yes |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | prefixo do ambiente | `string` | n/a | yes |
| <a name="input_storage_account_unity_name"></a> [storage\_account\_unity\_name](#input\_storage\_account\_unity\_name) | nome da storage account do unity | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_databricks_metastore"></a> [databricks\_metastore](#output\_databricks\_metastore) | n/a |
| <a name="output_databricks_metastore_id"></a> [databricks\_metastore\_id](#output\_databricks\_metastore\_id) | n/a |
| <a name="output_group_data_analysts"></a> [group\_data\_analysts](#output\_group\_data\_analysts) | n/a |
| <a name="output_group_data_engineers"></a> [group\_data\_engineers](#output\_group\_data\_engineers) | n/a |
| <a name="output_group_data_governance"></a> [group\_data\_governance](#output\_group\_data\_governance) | n/a |
| <a name="output_group_metastore_owners"></a> [group\_metastore\_owners](#output\_group\_metastore\_owners) | n/a |
