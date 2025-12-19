module "rg_calling" {
  source = "../child/azure_rg"

  rg_name     = "newrg"
  rg_location = "centralindia"
}

module "mod_vnet" {
  source     = "../child/azure_vn"
  depends_on = [module.rg_calling]

  vnet_name          = "virtual_network_name"
  vnet_rgname        = "newrg"
  vnet_location      = "centralindia"
  vnet_address_space = ["10.0.0.0/16"]
}

module "mod_subnet" {
  source     = "../child/azure_subnet"
  depends_on = [module.mod_vnet]

  az_subnet        = "subnet_name"
  rg_name          = "centralindia"
  vnet_name        = "virtual_network_name"
  address_prefixes = ["10.0.0.16/24"]
}

module "mod_azurevm" {
  source     = "../child/azure_vm"
  depends_on = [module.mod_subnet]

  az_vmname    = "fronttodo"
  az_vmsize    = "Standard_F2"
  rg_name      = "newrg"
  rg_location  = "centralindia"
  az_vmnic     = "azvmnic"
  nicdata_name = " public-nic "
  az_subnet    = "subnet_name"
  vnet_name    = "virtual_network_name"
  publicip     = "public-ip-name"

}

module "mod_public_ip" {
  source     = "../child/azure_public_ip"
  depends_on = [module.mod_vnet]


  az_public_ipname               = "public-ip-name"
  az_public_iprg                 = "newrg"
  az_public_iplocation           = "centralindia"
  az_public_ip_allocation_method = "Static"

}

module "mod_azure_sql_server" {
  source = "../child/azure_sql_server"

  mssqlserver_name                         = "puneetserver"
  mssqlserver_rgname                       = "newrg"
  mssqlserver_locationname                 = "centralindia"
  mssqlserver_administrator_login          = "adminuser"
  mssqlserver_administrator_login_password = "server@Admin231"
}


module "mod_azure_sql_db" {
  source     = "../child/azure_sql_db"
  depends_on = [module.mod_azure_sql_server]

  mssqldb_name       = "puneetdb"
  mssqlserver_name   = "puneetserver"
  mssqlserver_rgname = "newrg"

}

module "mod_az_key_vault" {
  source     = "../child/azure_key_vault"
  depends_on = [module.rg_calling]

  azure_key_vault          = "Key-Vault-001"
  azure_key_vault_rg       = "newrg"
  azure_key_vault_location = "centralindia"
}
