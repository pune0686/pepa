resource "azurerm_mssql_database" "mssql_db" {
  name           = var.mssqldb_name
  server_id      = data.azurerm_mssql_server.az_mssql_server.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 4
  read_scale     = true
  sku_name       = "S0"
  zone_redundant = true
  enclave_type   = "VBS"
}

