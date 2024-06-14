# CRIANDO A STORAGE ACCOUNT DO UNITY
resource "azurerm_storage_account" "az_sa_unity" {
  name                     = "adls${replace(var.prefix_name, "-", "")}uc${lower(replace(var.location, " ", ""))}"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = true

  tags = {
    ambiente   = "prod"
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIANDO O CONTAINER NO DATA LAKE DO UNITY
resource "azurerm_storage_data_lake_gen2_filesystem" "filesystem_metastore" {
  name               = "metastore"
  storage_account_id = azurerm_storage_account.az_sa_unity.id
}

# CRIANDO O DIRETÓRIO DO UNITY NO CONTAINER METASTORE
resource "azurerm_storage_data_lake_gen2_path" "path_metastore" {
  path               = var.metastore_name_interpolated
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.filesystem_metastore.name
  storage_account_id = azurerm_storage_account.az_sa_unity.id
  resource           = "directory"
}

# CRIANDO O DIRETÓRIO UNITY NO CONTAINER METASTORE DENTRO DO DIRETORIO PRINCIPAL
resource "azurerm_storage_data_lake_gen2_path" "path_unity" {
  path               = "${var.metastore_name_interpolated}/unity"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.filesystem_metastore.name
  storage_account_id = azurerm_storage_account.az_sa_unity.id
  resource           = "directory"

  depends_on = [azurerm_storage_data_lake_gen2_path.path_metastore]
}

# CRIANDO O DIRETÓRIO DEV NO CONTAINER METASTORE DENTRO DO DIRETORIO PRINCIPAL
resource "azurerm_storage_data_lake_gen2_path" "path_dev" {
  path               = "${var.metastore_name_interpolated}/dev"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.filesystem_metastore.name
  storage_account_id = azurerm_storage_account.az_sa_unity.id
  resource           = "directory"

  depends_on = [azurerm_storage_data_lake_gen2_path.path_metastore]
}

# CRIANDO O DIRETÓRIO DEV NO CONTAINER METASTORE DENTRO DO DIRETORIO PRINCIPAL
resource "azurerm_storage_data_lake_gen2_path" "path_prod" {
  path               = "${var.metastore_name_interpolated}/prod"
  filesystem_name    = azurerm_storage_data_lake_gen2_filesystem.filesystem_metastore.name
  storage_account_id = azurerm_storage_account.az_sa_unity.id
  resource           = "directory"

  depends_on = [azurerm_storage_data_lake_gen2_path.path_metastore]
}