// Create the VM here
resource "azurerm_network_interface" "prod-vm-nic" {
  name                = var.prod_vm_nic_name
  location            = var.prod_rg_location
  resource_group_name = var.prod_rg_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.prod-vn-subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_linux_virtual_machine" "prod-vm" {
  name                            = var.prod_vm_name
  resource_group_name             = var.prod_rg_name
  location                        = var.prod_rg_location
  size                            = var.prod_vm_sku
  disable_password_authentication = false
  admin_username                  = var.prod_vm_username
  admin_password                  = var.prod_vm_password
  network_interface_ids = [
    azurerm_network_interface.prod-vm-nic.id,
  ]
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.prod_os_publisher
    offer     = var.prod_os_offer
    sku       = var.prod_os_sku
    version   = var.prod_os_version
  }
}