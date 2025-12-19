# data "azurerm_subnet" "datasnet" {
#   name                 = var.az_subnet
#   virtual_network_name = var.vnet_name
#   resource_group_name  = var.rg_name
# }