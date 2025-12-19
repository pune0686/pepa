resource "azurerm_virtual_network" "vnet281" {
  name                = var.vnet_name
  location            = var.vnet_location
  resource_group_name = var.vnet_rgname
  address_space       = var.vnet_address_space
}