variable "prefix_name" {
  type        = string
  description = "prefixo do ambiente"
}

variable "ambiente" {
  type        = string
  description = "tag do ambiente"
}

variable "owner" {
  type        = string
  description = "tag do owner"
}

variable "managed_by" {
  type        = string
  description = "tag do gerenciamento"
}

variable "resource_group_name" {
  type        = string
  description = "nome do resource group"
}

variable "resource_group_location" {
  type        = string
  description = "location do resource group"
}

variable "vm_user" {
  type        = string
  description = "usuário da vm"
}

variable "vm_password" {
  type        = string
  description = "senha da vm"
}