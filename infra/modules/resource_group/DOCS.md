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
| [azurerm_resource_group.az_rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_group_data_analysts_id"></a> [group\_data\_analysts\_id](#input\_group\_data\_analysts\_id) | id do grupo data analysts | `string` | n/a | yes |
| <a name="input_group_data_engineers_id"></a> [group\_data\_engineers\_id](#input\_group\_data\_engineers\_id) | id do grupo data engineers | `string` | n/a | yes |
| <a name="input_group_metastore_owners_id"></a> [group\_metastore\_owners\_id](#input\_group\_metastore\_owners\_id) | id do grupo metastore owners | `string` | n/a | yes |
| <a name="input_group_owners_id"></a> [group\_owners\_id](#input\_group\_owners\_id) | id do grupo owners | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | Localiza├º├úo do resource group | `string` | n/a | yes |
| <a name="input_managed_by"></a> [managed\_by](#input\_managed\_by) | tag do gerenciamento | `string` | n/a | yes |
| <a name="input_owner"></a> [owner](#input\_owner) | tag do owner | `string` | n/a | yes |
| <a name="input_prefix_name"></a> [prefix\_name](#input\_prefix\_name) | prefixo do ambiente | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_resource_group_location"></a> [resource\_group\_location](#output\_resource\_group\_location) | n/a |
| <a name="output_resource_group_name"></a> [resource\_group\_name](#output\_resource\_group\_name) | n/a |
