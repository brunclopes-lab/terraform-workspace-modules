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

variable "storage_account_dados_name" {
  type        = string
  description = "nome da storage account de dados"
}

variable "storage_account_unity_name" {
  type        = string
  description = "nome da storage account do unity"
}

variable "metastore_name_interpolated" {
  type        = string
  description = "nome da pasta do unity"
}

variable "databricks_workspace_id" {
  type        = string
  description = "id do workspace databricks"
}

variable "databricks_workspace_url" {
  type        = string
  description = "url do workspace databricks"
}

variable "azure_data_factory_principal_id" {
  type        = string
  description = "principal id do data factory"
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

variable "access_connector_id" {
  type        = string
  description = "id do access connector"
}

variable "metastore_id" {
  type        = string
  description = "id do metastore"
}