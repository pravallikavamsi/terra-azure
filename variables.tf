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
variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}
variable "vnet_address_space" {
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
variable "nic_name" {
  description = "The name of the network interface"
  type        = string
}
variable "security_group_name" {
  description = "The name of the network security group"
  type        = string
}
variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}
variable "vm_size" {
  description = "The size of the virtual machine"
  type        = string
}
variable "image_publisher" {
  description = "The publisher of the image to use for the virtual machine"
  type        = string
}
variable "image_offer" {
  description = "The offer of the image to use for the virtual machine"
  type        = string
}
variable "image_sku" {
  description = "The SKU of the image to use for the virtual machine"
  type        = string
}
variable "image_version" {
  description = "The version of the image to use for the virtual machine"
  type        = string
}
variable "admin_username" {
  description = "The admin username for the virtual machine"
  type        = string
} 
variable "public_key_path" {
  description = "The public SSH key for the virtual machine"
  type        = string
}