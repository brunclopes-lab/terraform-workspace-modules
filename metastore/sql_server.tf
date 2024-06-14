# module "sql_server" {
#   source                  = "./modules/sql_server"
#   sql_server_user         = var.sql_server_user
#   sql_server_password     = var.sql_server_password
#   resource_group_name     = module.resource_group.resource_group_name
#   resource_group_location = module.resource_group.resource_group_location
#   prefix_name             = var.prefix_name
#   managed_by              = var.managed_by
#   owner                   = var.owner
#   ambiente                = var.ambiente
# }