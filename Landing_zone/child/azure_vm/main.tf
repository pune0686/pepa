resource "azurerm_network_interface" "nic" {
  name                = var.az_vmnic
  location            = var.rg_location
  resource_group_name = var.rg_name
  

  ip_configuration {
    name                          = "internal"
    subnet_id                     = data.azurerm_subnet.datasnet.id 
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id = data.azurerm_public_ip.publicip.id
  }
}

resource "azurerm_linux_virtual_machine" "azure_vm" {
  name                = var.az_vmname
  resource_group_name = var.rg_name
  location            = var.rg_location
  size                = var.az_vmsize      
  admin_username      = "adminuser"
  admin_password =    "Admin@3456"
  network_interface_ids = [ data.azurerm_network_interface.nicdata.id ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}

