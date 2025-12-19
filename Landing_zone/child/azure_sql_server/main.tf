resource "azurerm_mssql_server" "server_name" {
  name                         = var.mssqlserver_name
  resource_group_name          = var.mssqlserver_rgname
  location                     = var.mssqlserver_locationname
  version                      = "12.0"
  administrator_login          = var.mssqlserver_administrator_login
  administrator_login_password = var.mssqlserver_administrator_login_password
  minimum_tls_version          = "1.2"
}