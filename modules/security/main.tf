resource "azurerm_network_security_group" "nsg" {
  name                = var.security_group_name
  location            = var.location
  resource_group_name = var.resource_group_name

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}
#Allow SSH traffic
resource "azurerm_network_security_rule" "ssh_rule" {
  name                        = "SSH"
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "22"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg.name
}
#Allow HTTP traffic
resource "azurerm_network_security_rule" "http_rule" {
  name                        = "HTTP"
  priority                    = 200
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.resource_group_name
  network_security_group_name = azurerm_network_security_group.nsg.name
}
#Associate NSG with Subnet
resource "azurerm_subnet_network_security_group_association" "association" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}