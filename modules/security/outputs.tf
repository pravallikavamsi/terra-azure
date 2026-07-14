output "security_group_id" {
    value = azurerm_network_security_group.nsg.id 
}

output "security_group_name" {
    value = azurerm_network_security_group.nsg.name
}
