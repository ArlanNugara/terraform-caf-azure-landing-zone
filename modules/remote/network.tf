// Create the Virtual Network here
resource "azurerm_virtual_network" "remote-vn" {
  name                = var.remote_vn_name
  address_space       = var.remote_vn_address
  resource_group_name = var.remote_rg_name
  location            = var.remote_rg_location
  tags                = var.tags
}

// Create the Subnet here
resource "azurerm_subnet" "remote-vn-subnet" {
  name                 = var.remote_vn_subnet_name
  resource_group_name  = var.remote_rg_name
  virtual_network_name = azurerm_virtual_network.remote-vn.name
  address_prefixes     = var.remote_vn_subnet_address
}

resource "azurerm_subnet" "remote-vpn-subnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = var.remote_rg_name
  virtual_network_name = azurerm_virtual_network.remote-vn.name
  address_prefixes     = var.remote_vn_gateway_subnet_address
}

// Output necessary stuff
output "remote-vn-id" {
  value = azurerm_virtual_network.remote-vn.id
}

output "remote-subnet-id" {
  value = azurerm_subnet.remote-vn-subnet.id
}