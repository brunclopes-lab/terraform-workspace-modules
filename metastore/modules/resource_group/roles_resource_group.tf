# DEFININDO ROLES PARA GRUPOS ACESSAREM O GRUPO DE RECURSOS - RESOURCE GROUP DE PROD
resource "azurerm_role_assignment" "role_rg_data_analysts_contributor_prod" {
  scope                = azurerm_resource_group.az_rg_prod.id
  role_definition_name = "Contributor"
  principal_id         = var.azuread_group_data_analysts_id

  depends_on = [azurerm_resource_group.az_rg_prod]
}

resource "azurerm_role_assignment" "role_rg_data_engineer_contributor_prod" {
  scope                = azurerm_resource_group.az_rg_prod.id
  role_definition_name = "Contributor"
  principal_id         = var.azuread_group_data_engineers_id

  depends_on = [azurerm_resource_group.az_rg_prod]
}

resource "azurerm_role_assignment" "role_rg_owners_user_access_adm_prod" {
  scope                = azurerm_resource_group.az_rg_prod.id
  role_definition_name = "User Access Administrator"
  principal_id         = var.azuread_group_owners_id

  depends_on = [azurerm_resource_group.az_rg_prod]
}

resource "azurerm_role_assignment" "role_rg_metastore_owners_user_access_adm_prod" {
  scope                = azurerm_resource_group.az_rg_prod.id
  role_definition_name = "User Access Administrator"
  principal_id         = var.azuread_group_metastore_owners_id

  depends_on = [azurerm_resource_group.az_rg_prod]
}

# DEFININDO ROLES PARA GRUPOS ACESSAREM O GRUPO DE RECURSOS - RESOURCE GROUP DE DEV
resource "azurerm_role_assignment" "role_rg_data_analysts_contributor_dev" {
  scope                = azurerm_resource_group.az_rg_dev.id
  role_definition_name = "Contributor"
  principal_id         = var.azuread_group_data_analysts_id

  depends_on = [azurerm_resource_group.az_rg_dev]
}

resource "azurerm_role_assignment" "role_rg_data_engineer_contributor_dev" {
  scope                = azurerm_resource_group.az_rg_dev.id
  role_definition_name = "Contributor"
  principal_id         = var.azuread_group_data_engineers_id

  depends_on = [azurerm_resource_group.az_rg_dev]
}

resource "azurerm_role_assignment" "role_rg_owners_user_access_adm_dev" {
  scope                = azurerm_resource_group.az_rg_dev.id
  role_definition_name = "User Access Administrator"
  principal_id         = var.azuread_group_owners_id

  depends_on = [azurerm_resource_group.az_rg_dev]
}

resource "azurerm_role_assignment" "role_rg_metastore_owners_user_access_adm_dev" {
  scope                = azurerm_resource_group.az_rg_dev.id
  role_definition_name = "User Access Administrator"
  principal_id         = var.azuread_group_metastore_owners_id

  depends_on = [azurerm_resource_group.az_rg_dev]
}
