module "resource_group" {
  source              = "./modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  environment         = var.environment
}
module "network" {
  source              = "./modules/network"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  environment         = var.environment
  virtual_network_name = var.vnet_name
  address_space        = var.vnet_address_space
  subnet_name          = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
  network_interface_name = var.nic_name
  public_ip_name        = var.public_ip_name
}
module "security" {
  source              = "./modules/security"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  environment         = var.environment
  security_group_name = var.security_group_name
  subnet_id          = module.network.subnet_id
}
module "compute" {
  source              = "./modules/compute"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.resource_group_location
  environment         = var.environment
  vm_name             = var.vm_name
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  public_key          = var.public_key_path
  image_publisher     = var.image_publisher
  image_offer         = var.image_offer
  image_sku           = var.image_sku
  image_version       = var.image_version
  network_interface_id = module.network.network_interface_id
}
