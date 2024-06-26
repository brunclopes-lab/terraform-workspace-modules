## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | n/a |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |
| <a name="provider_time"></a> [time](#provider\_time) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application.app_registration](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application) | resource |
| [azuread_application_owner.app_registration](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_owner) | resource |
| [azuread_application_password.secret_app_registration](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password) | resource |
| [azuread_service_principal.service_principal](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azurerm_role_assignment.role_adls_dados_data_analysts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_dados_data_engineers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_dados_metastore_owners](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_dados_owners](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_dados_service_principal](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_dados_user_az_cli](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_adls_unity_service_principal](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_data_analysts_secrets_officer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_data_engineer_secrets_officer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_metastore_owners_secrets_officer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_owners_secrets_officer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_sp_secrets_officer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_akv_user_secrets_officer](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [azurerm_role_assignment.role_app_registration](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |
| [time_rotating.year](https://registry.terraform.io/providers/hashicorp/time/latest/docs/resources/rotating) | resource |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azuread_group.data_analysts](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azuread_group.data_engineers](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azuread_group.metastore_owners](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azuread_group.owners](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/group) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.core](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_key_vault_id"></a> [key\_vault\_id](#input\_key\_vault\_id) | id do key vault | `string` | n/a | yes |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | nome de prefixo do projeto | `string` | n/a | yes |
| <a name="input_storage_account_dados_id"></a> [storage\_account\_dados\_id](#input\_storage\_account\_dados\_id) | id da storage account de dados | `string` | n/a | yes |
| <a name="input_storage_account_unity_id"></a> [storage\_account\_unity\_id](#input\_storage\_account\_unity\_id) | id da storage account do unity | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_app_registration"></a> [app\_registration](#output\_app\_registration) | n/a |
| <a name="output_group_data_analysts_id"></a> [group\_data\_analysts\_id](#output\_group\_data\_analysts\_id) | n/a |
| <a name="output_group_data_engineers_id"></a> [group\_data\_engineers\_id](#output\_group\_data\_engineers\_id) | n/a |
| <a name="output_group_metastore_owners_id"></a> [group\_metastore\_owners\_id](#output\_group\_metastore\_owners\_id) | n/a |
| <a name="output_group_owners_id"></a> [group\_owners\_id](#output\_group\_owners\_id) | n/a |
| <a name="output_role_akv_user_secrets_officer"></a> [role\_akv\_user\_secrets\_officer](#output\_role\_akv\_user\_secrets\_officer) | n/a |
| <a name="output_secret_app_registration"></a> [secret\_app\_registration](#output\_secret\_app\_registration) | n/a |
