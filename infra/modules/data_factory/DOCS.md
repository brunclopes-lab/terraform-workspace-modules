## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_data_factory.az_datafactory](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory) | resource |
| [azurerm_data_factory_linked_service_key_vault.kv_lk](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/data_factory_linked_service_key_vault) | resource |
| [azurerm_role_assignment.role_adls_dados_adf](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_unity_adf](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_adf_secrets_user](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | id do key vault | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | tag do gerenciamento | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | tag do owner | `string` | n/a | yes |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | prefixo do ambiente | `string` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | location do resource group | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | nome do resource group | `string` | n/a | yes |
| <a name="input_storage_account_dados_id"></a> [storage\_account\_dados\_id](#input\_storage\_account\_dados\_id) | id da storage account de dados | `string` | n/a | yes |
| <a name="input_storage_account_unity_id"></a> [storage\_account\_unity\_id](#input\_storage\_account\_unity\_id) | id da storage account do unity | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_data_factory"></a> [data\_factory](#output\_data\_factory) | n/a |
