## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | 2.50.0 |
| <a name="requirement_azuredevops"></a> [azuredevops](#requirement\_azuredevops) | 1.1.1 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.105.0 |
| <a name="requirement_databricks"></a> [databricks](#requirement\_databricks) | 1.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | 2.50.0 |
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.105.0 |
| <a name="provider_databricks.azure_account"></a> [databricks.azure\_account](#provider\_databricks.azure\_account) | 1.45.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_azure_ad"></a> [azure\_ad](#module\_azure\_ad) | ./modules/azure_ad | n/a |
| <a name="module_azure_devops"></a> [azure\_devops](#module\_azure\_devops) | ./modules/azure_devops | n/a |
| <a name="module_databricks"></a> [databricks](#module\_databricks) | ./modules/databricks | n/a |
| <a name="module_databricks_metastore"></a> [databricks\_metastore](#module\_databricks\_metastore) | ./modules/databricks_metastore | n/a |
| <a name="module_resource_group"></a> [resource\_group](#module\_resource\_group) | ./modules/resource_group | n/a |
| <a name="module_storage_account"></a> [storage\_account](#module\_storage\_account) | ./modules/storage_account | n/a |

## Resources

| Name | Type |
|------|------|
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/2.50.0/docs/data-sources/client_config) | data source |
| [azuread_service_principal.sp_azuredatabricks](https://registry.terraform.io/providers/hashicorp/azuread/2.50.0/docs/data-sources/service_principal) | data source |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/data-sources/client_config) | data source |
| [azurerm_subscription.core](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/data-sources/subscription) | data source |
| [databricks_service_principal.sp_terraform](https://registry.terraform.io/providers/databricks/databricks/1.45.0/docs/data-sources/service_principal) | data source |
| [databricks_user.principal_user](https://registry.terraform.io/providers/databricks/databricks/1.45.0/docs/data-sources/user) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_azure_client_secret"></a> [azure\_client\_secret](#input\_azure\_client\_secret) | Client Secret do Azure | `string` | n/a | yes |
| <a name="input_databricks_account_id"></a> [databricks\_account\_id](#input\_databricks\_account\_id) | ID da conta do Databricks | `string` | n/a | yes |
| <a name="input_databricks_sp_terraform"></a> [databricks\_sp\_terraform](#input\_databricks\_sp\_terraform) | ID do service principal terraform no Databricks | `string` | n/a | yes |
| <a name="input_databricks_user_email"></a> [databricks\_user\_email](#input\_databricks\_user\_email) | Email do usu├írio principal no Databricks | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Localiza├º├úo do resource group | `string` | `"East US 2"` | no |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | tag de quem est├í gerenciando os recursos (cria├º├úo e exclus├úo) | `string` | `"terraform"` | no |
| <a name="input_metastore_location"></a> [metastore\_location](#input\_metastore\_location) | Localiza├º├úo do metastore | `string` | `"eastus2"` | no |
| <a name="input_metastore_name"></a> [metastore\_name](#input\_metastore\_name) | Nome do metastore | `string` | `"uc-metastore"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | tag do owner | `string` | `"bruno"` | no |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | nome de prefixo do projeto | `string` | n/a | yes |
| <a name="input_sa_containers_name"></a> [sa\_containers\_name](#input\_sa\_containers\_name) | containers a serem criados | `list(any)` | <pre>[<br>  "function-app",<br>  "transient",<br>  "bronze",<br>  "silver",<br>  "gold",<br>  "controller"<br>]</pre> | no |
| <a name="input_sql_server_password"></a> [sql\_server\_password](#input\_sql\_server\_password) | senha do banco | `string` | n/a | yes |
| <a name="input_sql_server_user"></a> [sql\_server\_user](#input\_sql\_server\_user) | usuario do banco | `string` | n/a | yes |
| <a name="input_vm_password"></a> [vm\_password](#input\_vm\_password) | senha da vm | `string` | n/a | yes |
| <a name="input_vm_user"></a> [vm\_user](#input\_vm\_user) | usuario da vm | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_databricks_metastore_id"></a> [databricks\_metastore\_id](#output\_databricks\_metastore\_id) | n/a |
| <a name="output_databricks_sp_terraform_id"></a> [databricks\_sp\_terraform\_id](#output\_databricks\_sp\_terraform\_id) | n/a |
| <a name="output_databricks_user_id"></a> [databricks\_user\_id](#output\_databricks\_user\_id) | n/a |
