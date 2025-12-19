variable "az_vmname" {
   type = string
   description = "This Virtual Machine name"
}
variable "rg_name" {
  type = string
  description = "This Virtual Machine group namme"
}

variable "rg_location" {
  type = string
  description = "This Virtual Machine location name"
}

variable "az_vmsize" {
  type = string
  description = "This Virtual Machine size"
}

variable "az_vmnic" {
  type = string
  description = "This Virtual Machine size"
}

variable "nicdata_name" {
  type = string
description = "This Virtual Machine NIC Name"
}

variable "az_subnet" {
  type = string
description = "Subnet Name"
}

variable "vnet_name" {
  type = string
description = "Vnet Name"
}

variable "publicip" {
  type = string
  description = "PUblic ip name"
}