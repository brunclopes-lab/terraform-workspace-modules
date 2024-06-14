module "resource_group" {
  source                            = "./modules/resource_group"
  prefix_name                       = var.prefix_name
  managed_by                        = var.managed_by
  owner                             = var.owner
  location                          = var.location
  azuread_group_data_analysts_id    = module.azure_ad.azuread_group_data_analysts_id
  azuread_group_data_engineers_id   = module.azure_ad.azuread_group_data_engineers_id
  azuread_group_owners_id           = module.azure_ad.azuread_group_owners_id
  azuread_group_metastore_owners_id = module.azure_ad.azuread_group_metastore_owners_id
}