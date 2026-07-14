variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region where the resource group will be created"
  type        = string
}   

variable "environment" {
  description = "The environment for the resource group (e.g., dev, test, prod)"
  type        = string
}

variable "virtual_network_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}
variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
}
variable "public_ip_name" {
  description = "The name of the public IP"
  type        = string
}
variable "network_interface_name" {
  description = "The name of the network interface"
  type        = string
}