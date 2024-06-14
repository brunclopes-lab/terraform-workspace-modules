# TRAZENDO OS DADOS DO SERVICE PRINCIPAL DO DATABRICKS
data "azuread_service_principal" "sp_azuredatabricks" {
  display_name = "AzureDatabricks"
}
