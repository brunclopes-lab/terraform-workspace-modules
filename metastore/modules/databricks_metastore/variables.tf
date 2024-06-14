variable "azure_client_secret" {
  type        = string
  description = "secret da app registration"
}

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

variable "storage_account_unity_name" {
  type        = string
  description = "nome da storage account do unity"
}

variable "metastore_name_interpolated" {
  type        = string
  description = "nome da pasta do unity"
}

variable "databricks_account_id" {
  type        = string
  description = "ID da conta do Databricks"
}

variable "databricks_user_id" {
  type        = string
  description = "ID do usuario principal no Databricks"
}

variable "databricks_sp_terraform_id" {
  type        = string
  description = "ID do service principal terraform no Databricks"
}

variable "metastore_location" {
  type        = string
  description = "Localização do metastore"
}