resource_group_name = "prod-rg"
location = "Central India"
environment = "prod"    
#Network
vnet_name = "vnet-prod" 
vnet_address_space = ["192.168.0.0/16"]
subnet_name = "subnet-prod"
subnet_address_prefixes = ["192.168.5.0/24"]
public_ip_name = "pip-prod"
nic_name = "nic-prod"
#Security           
security_group_name = "nsg-prod"
#Compute    
vm_name = "vm-prod"
vm_size = "Standard_D2s_v3"
admin_username = "azureuser"
public_key_path = "~/.ssh/azure_vm_key.pub"
image_publisher = "Canonical"
image_offer = "0001-com-ubuntu-server-jammy"
image_sku = "22_04-lts"
