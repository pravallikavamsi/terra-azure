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