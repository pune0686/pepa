resource "azurerm_subnet" "azure_subnet" {
  name                 = var.az_subnet
  resource_group_name  = var.rg_name
  virtual_network_name = var.vnet_name
  address_prefixes     = var.address_prefixes
  }