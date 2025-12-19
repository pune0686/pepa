resource "azurerm_public_ip" "pip" {
  name                = var.az_public_ipname
  resource_group_name = var.az_public_iprg
  location            = var.az_public_iplocation
  allocation_method   = var.az_public_ip_allocation_method 
}