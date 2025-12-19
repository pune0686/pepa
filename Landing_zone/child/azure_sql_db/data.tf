data "azurerm_mssql_server" "az_mssql_server" {
  name                = var.mssqlserver_name
  resource_group_name = var.mssqlserver_rgname
}