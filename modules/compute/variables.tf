variable "vm_name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "location" {
  description = "The Azure region where the virtual machine will be created"
  type        = string
}   

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "network_interface_id" {
  description = "The ID of the network interface to associate with the virtual machine"
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

variable "public_key" {
  description = "The public SSH key for the virtual machine"
  type        = string
}
variable "environment" {
  description = "The environment for the virtual machine (e.g., dev, test, prod)"
  type        = string
}
