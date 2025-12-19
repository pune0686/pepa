data "azurerm_network_interface" "nicdata" {
  name                = var.nicdata_name
  resource_group_name = var.rg_name
}

data "azurerm_subnet" "datasnet" {
  name                 = var.az_subnet
  virtual_network_name = var.vnet_name
  resource_group_name  = var.rg_name
}

data "azurerm_public_ip" "publicip" {
  name                = var.publicip
  resource_group_name = var.rg_name
}

