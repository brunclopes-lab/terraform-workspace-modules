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

variable "metastore_name_interpolated" {
  type        = string
  description = "nome da pasta do unity"
}

variable "resource_group_name" {
  type        = string
  description = "nome do resource group"
}

variable "resource_group_location" {
  type        = string
  description = "location do resource group"
}