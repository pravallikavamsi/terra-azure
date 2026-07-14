output "resource_group_name" {
  value = module.resource_group.resource_group_name
}
output "resource_group_location" {
  value = module.resource_group.resource_group_location
}   
output "vnet_name" {
  value = module.network.vnet_name
}
output "subnet_name" {
  value = module.network.subnet_name
}
output "public_ip_address" {
  value = module.network.public_ip_address
}
output "security_group_name" {
  value = module.security.security_group_name
}
output "vm_name" {
  value = module.compute.vm_name
}
