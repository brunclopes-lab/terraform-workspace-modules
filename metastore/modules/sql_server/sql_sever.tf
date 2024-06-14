# CRIAÇÃO DO SERVER SQL 
resource "azurerm_mssql_server" "az_sqlserver" {
  name                         = "sql-${var.prefix_name}-${var.ambiente}"
  resource_group_name          = var.resource_group_name
  location                     = var.resource_group_location
  version                      = "12.0"
  administrator_login          = varl.sql_server_user
  administrator_login_password = var.sql_server_password
  minimum_tls_version          = "1.2"
  timeouts {
    create = "45m"
    update = "45m"
    delete = "45m"
  }

  tags = {
    ambiente   = var.ambiente
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# CRIAÇÃO DE DATABASE SQL
resource "azurerm_mssql_database" "az_sqldatabase" {
  name           = "sqldb-${var.prefix_name}-${var.ambiente}"
  server_id      = azurerm_mssql_server.az_sqlserver.id
  license_type   = "BasePrice"
  sku_name       = "Basic"
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  zone_redundant = false
  max_size_gb    = 2
  sample_name    = "AdventureWorksLT"
  timeouts {
    create = "45m"
    update = "45m"
    delete = "45m"
  }

  tags = {
    ambiente   = var.ambiente
    managed_by = var.managed_by
    owner      = var.owner
  }
}

# REGRAS DE FIREWALL 
resource "azurerm_mssql_firewall_rule" "allow_all_ips" {
  name             = "Allowall"
  server_id        = azurerm_mssql_server.az_sqlserver.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}