resource "azurerm_linux_virtual_machine" "vm" {
  name                  = var.vm_name
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [var.network_interface_id]
  size                  = var.vm_size
  admin_username        = var.admin_username

  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = var.image_version
  }

  os_disk {
    name                 = "${var.vm_name}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb         = 30
  }
  disable_password_authentication = true
  admin_ssh_key {
    username   = var.admin_username
    public_key = file(var.public_key)
  }

  tags = {
    environment = var.environment
    managed_by  = "terraform"
  }
}