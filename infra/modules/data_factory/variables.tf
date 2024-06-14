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

variable "resource_group_name" {
  type        = string
  description = "nome do resource group"
}

variable "resource_group_location" {
  type        = string
  description = "location do resource group"
}

variable "key_vault_id" {
  type        = string
  description = "id do key vault"
}

variable "storage_account_dados_id" {
  type        = string
  description = "id da storage account de dados"
}

variable "storage_account_unity_id" {
  type        = string
  description = "id da storage account do unity"
}