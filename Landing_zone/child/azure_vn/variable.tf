variable "vnet_name" {
    type = string
    description = "This is Virtual Network Name"
}

variable "vnet_location" {
    type = string
    description = "This is Virtual Network Location"
}

variable "vnet_rgname" {
  type = string
  description = "This is Virtual network rg name"
}

variable "vnet_address_space" {
    type = list(string)
    description = "This is Virtual Network address Name"
}