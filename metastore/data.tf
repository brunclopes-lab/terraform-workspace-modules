# TRAZENDO OS DADOS DO SERVICE PRINCIPAL DO DATABRICKS
data "azuread_service_principal" "sp_azuredatabricks" {
  display_name = "AzureDatabricks"
}

# OBTENDO O ID DO DATABRICKS REFERENTE AO SERVICE PRINCIPAL
data "databricks_service_principal" "sp_terraform" {
  provider = databricks.azure_account
  application_id = "e2ec2faa-d292-4c56-a9fd-3665914268d6"
}

# OBTENDO O ID DO USUARIO 
data "databricks_user" "principal_user" {
  provider = databricks.azure_account
  user_name = "brunclopes_lab_outlook.com#ext#@brunclopeslaboutlook.onmicrosoft.com"
}