variable "az_subnet" {
  type = string
  description = "This is subnet name"
}

variable "rg_name" {
  type = string
  description = "This is subnet rg name"
}

variable "vnet_name" {
  type = string
  description = "This is subnet rg name"
}

variable "address_prefixes" {
  type = list(string)
  description = "This is subnet address prefix"
}