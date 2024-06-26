## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | 3.105.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | 3.6.2 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.105.0 |
| <a name="provider_random"></a> [random](#provider\_random) | 3.6.2 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.rg_terraform_state](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/resource_group) | resource |
| [azurerm_storage_account.az_sa_terraform_state](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/storage_account) | resource |
| [azurerm_storage_container.container_metastore](https://registry.terraform.io/providers/hashicorp/azurerm/3.105.0/docs/resources/storage_container) | resource |
| [random_string.random_terraform_state](https://registry.terraform.io/providers/hashicorp/random/3.6.2/docs/resources/string) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | tag de quem est├í gerenciando os recursos (cria├º├úo e exclus├úo) | `string` | `"terraform"` | no |
| <a name="input_owner"></a> [owner](#input\_owner) | tag do owner | `string` | `"bruno"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_primary_access_key"></a> [primary\_access\_key](#output\_primary\_access\_key) | n/a |
| <a name="output_secondary_access_key"></a> [secondary\_access\_key](#output\_secondary\_access\_key) | n/a |
| <a name="output_storage_account_name"></a> [storage\_account\_name](#output\_storage\_account\_name) | n/a |
