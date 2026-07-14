output "vnet_id" {
  value = azurerm_virtual_network.vnet.id
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
}

output "subnet_id" {
  value = azurerm_subnet.subnet.id
}

output "subnet_name" {
  value = azurerm_subnet.subnet.name
}

output "public_ip_id" {
  value = azurerm_public_ip.pip.id
}

output "public_ip_address" {
  value = azurerm_public_ip.pip.ip_address
}

output "network_interface_id" {
  value = azurerm_network_interface.nic.id
}

output "network_interface_name" {
  value = azurerm_network_interface.nic.name
}   