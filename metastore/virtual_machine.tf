# module "virtual_machine" {
#   source                  = "./modules/virtual_machine"
#   resource_group_name     = module.resource_group.resource_group_name
#   resource_group_location = module.resource_group.resource_group_location
#   prefix_name             = var.prefix_name
#   managed_by              = var.managed_by
#   owner                   = var.owner
#   ambiente                = var.ambiente
#   vm_user                 = var.vm_user
#   vm_password             = var.vm_password
# }