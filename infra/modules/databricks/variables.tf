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

variable "storage_account_dados_id" {
  type        = string
  description = "nome da storage account de dados"
}

variable "storage_account_unity_id" {
  type        = string
  description = "nome da storage account do unity"
}

variable "key_vault_id" {
  type        = string
  description = "id da key vault"
}

variable "sp_databricks_id" {
  type        = string
  description = "id do service principal do databricks"
}

variable "databricks_group_data_governance_name" {
  type        = string
  description = "grupo do databricks"
}

variable "databricks_group_metastore_owners_name" {
  type        = string
  description = "grupo do databricks"
}

variable "databricks_group_data_analysts_name" {
  type        = string
  description = "grupo do databricks"
}

variable "databricks_group_data_engineers_name" {
  type        = string
  description = "grupo do databricks"
}