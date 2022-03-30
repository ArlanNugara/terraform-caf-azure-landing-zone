// Create the Public IP here
resource "azurerm_public_ip" "alz-bastion-pip" {
  name                = var.alz_bastion_pip_name
  resource_group_name = var.alz_rg_name
  location            = var.alz_rg_location
  allocation_method   = "Static"
  sku                 = "Standard"
}

// Create the Bastian host here
resource "azurerm_bastion_host" "alz-bastion" {
  name                = var.alz_bastion_name
  resource_group_name = var.alz_rg_name
  location            = var.alz_rg_location
  tags                = var.tags
  ip_configuration {
    name                 = "alz-bastion-ipc"
    subnet_id            = azurerm_subnet.alz-bastion-subnet.id
    public_ip_address_id = azurerm_public_ip.alz-bastion-pip.id
  }
}