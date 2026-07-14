resource_group_name = "rg-dev"
location = "Central India  "
environment = "dev"
#Network
vnet_name = "vnet-dev"  
vnet_address_space = ["192.168.0.0/16"]
subnet_name = "subnet-dev"
subnet_address_prefixes = ["192.168.1.0/24"]    
public_ip_name = "pip-dev"
nic_name = "nic-dev"
#Security
security_group_name = "nsg-dev"
#Compute
vm_name = "vm-dev"  
vm_size = "Standard_D2s_v3"
admin_username = "azureuser"
public_key_path = "~/.ssh/azure_vm_key.pub"
image_publisher = "Canonical"
image_offer = "0001-com-ubuntu-server-jammy"
image_sku = "22_04-lts" 
