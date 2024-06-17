#######################
### VARIAVEIS AZURE ###
#######################

variable "azure_client_secret" {
  type        = string
  description = "Client Secret do Azure"
}

################################
### VARIAVEIS RESOURCE GROUP ###
################################

variable "prefix_name" {
  type        = string
  description = "nome de prefixo do projeto"
}

variable "location" {
  type        = string
  description = "Localização do resource group"
  default     = "East US 2"
}

variable "sa_containers_name" {
  type        = list(any)
  description = "containers a serem criados"
  default     = ["function-app", "transient", "bronze", "silver", "gold", "controller"]
}

############
### TAGS ###
############

variable "owner" {
  type        = string
  description = "tag do owner"
  default     = "bruno"
}

variable "managed_by" {
  type        = string
  description = "tag de quem está gerenciando os recursos (criação e exclusão)"
  default     = "terraform"
}

############################
### VARIAVEIS DATABRICKS ###
############################

variable "databricks_account_id" {
  type        = string
  description = "ID da conta do Databricks"
}

variable "metastore_name" {
  type        = string
  description = "Nome do metastore"
  default     = "uc-metastore"
}

variable "databricks_user_email" {
  type        = string
  description = "Email do usuário principal no Databricks"
}

variable "databricks_sp_terraform" {
  type        = string
  description = "ID do service principal terraform no Databricks"
}

variable "metastore_location" {
  type        = string
  description = "Localização do metastore"
  default     = "eastus2"
}

variable "metastore_id" {
  type        = string
  description = "id do metastore"
}

############################
### VARIAVEIS SQL SERVER ###
############################

variable "sql_server_user" {
  type        = string
  description = "usuario do banco"
}

variable "sql_server_password" {
  type        = string
  description = "senha do banco"
}

#################################
### VARIAVEIS VIRTUAL MACHINE ###
#################################

variable "vm_user" {
  type        = string
  description = "usuario da vm"
}

variable "vm_password" {
  type        = string
  description = "senha da vm"
}