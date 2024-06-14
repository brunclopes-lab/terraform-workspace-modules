module "resource_group" {
  source                    = "./modules/resource_group"
  prefix_name               = var.prefix_name
  managed_by                = var.managed_by
  owner                     = var.owner
  location                  = var.location
  group_data_analysts_id    = module.azure_ad.group_data_analysts_id
  group_data_engineers_id   = module.azure_ad.group_data_engineers_id
  group_owners_id           = module.azure_ad.group_owners_id
  group_metastore_owners_id = module.azure_ad.group_metastore_owners_id
}