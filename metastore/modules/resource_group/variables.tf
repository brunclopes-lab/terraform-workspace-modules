variable "prefix_name" {
  type        = string
  description = "prefixo do ambiente"
}

variable "owner" {
  type        = string
  description = "tag do owner"
}

variable "managed_by" {
  type        = string
  description = "tag do gerenciamento"
}

variable "location" {
  type        = string
  description = "Localização do resource group"
}

variable "azuread_group_data_analysts_id" {
  type        = string
  description = "id do grupo data analysts"
}

variable "azuread_group_data_engineers_id" {
  type        = string
  description = "id do grupo data engineers"
}

variable "azuread_group_owners_id" {
  type        = string
  description = "id do grupo owners"
}

variable "azuread_group_metastore_owners_id" {
  type        = string
  description = "id do grupo metastore owners"
}