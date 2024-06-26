## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_group.data_analysts](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azuread_group.data_engineers](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azuread_group.metastore_owners](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azuread_group.owners](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/group) | resource |
| [azurerm_role_assignment.role_adls_unity_data_analysts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_unity_data_engineers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_unity_metastore](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_unity_owners](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_unity_user_az_cli](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.core](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | nome de prefixo do projeto | `string` | n/a | yes |
| <a name="input_storage_account_unity_id"></a> [storage\_account\_unity\_id](#input\_storage\_account\_unity\_id) | id da storage account do unity | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azuread_group_data_analysts_id"></a> [azuread\_group\_data\_analysts\_id](#output\_azuread\_group\_data\_analysts\_id) | n/a |
| <a name="output_azuread_group_data_engineers_id"></a> [azuread\_group\_data\_engineers\_id](#output\_azuread\_group\_data\_engineers\_id) | n/a |
| <a name="output_azuread_group_metastore_owners_id"></a> [azuread\_group\_metastore\_owners\_id](#output\_azuread\_group\_metastore\_owners\_id) | n/a |
| <a name="output_azuread_group_owners_id"></a> [azuread\_group\_owners\_id](#output\_azuread\_group\_owners\_id) | n/a |
