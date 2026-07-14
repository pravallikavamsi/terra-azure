#Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.virtual_network_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
#Subnet
resource "azurerm_subnet" "subnet" {
  name                 = var.subnet_name
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
}
#public IP
resource "azurerm_public_ip" "pip" {
  name                = var.public_ip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
#Network Interface
resource "azurerm_network_interface" "nic" {
    name                = var.network_interface_name
    location            = var.location
    resource_group_name = var.resource_group_name
    
    ip_configuration {
        name                          = "internal"
        subnet_id                     = azurerm_subnet.subnet.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = azurerm_public_ip.pip.id
    }
    
    tags = {
        environment = var.environment
        managed_by  = "terraform"
    }
    }

