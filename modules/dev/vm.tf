// Create the VM here
resource "azurerm_network_interface" "dev-vm-nic" {
  name                = var.dev_vm_nic_name
  location            = var.dev_rg_location
  resource_group_name = var.dev_rg_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.dev-vn-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "dev-vm" {
  name                            = var.dev_vm_name
  resource_group_name             = var.dev_rg_name
  location                        = var.dev_rg_location
  size                            = var.dev_vm_sku
  disable_password_authentication = false
  admin_username                  = var.dev_vm_username
  admin_password                  = var.dev_vm_password
  network_interface_ids = [
    azurerm_network_interface.dev-vm-nic.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.dev_os_publisher
    offer     = var.dev_os_offer
    sku       = var.dev_os_sku
    version   = var.dev_os_version
  }
}