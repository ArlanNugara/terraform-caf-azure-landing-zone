// Create the Gateway PIP here
resource "azurerm_public_ip" "alz-vpn-pip" {
  name                = var.alz_vpn_pip_name
  resource_group_name = var.alz_rg_name
  location            = var.alz_rg_location
  allocation_method   = "Dynamic"
  tags                = var.tags
}

// Create the Gateway here
resource "azurerm_virtual_network_gateway" "alz-vn-gateway" {
  name                = var.alz_vn_gateway_name
  resource_group_name = var.alz_rg_name
  location            = var.alz_rg_location
  tags                = var.tags
  type                = "Vpn"
  vpn_type            = "RouteBased"
  sku                 = "Basic"
  ip_configuration {
    public_ip_address_id          = azurerm_public_ip.alz-vpn-pip.id
    private_ip_address_allocation = "Dynamic"
    subnet_id                     = azurerm_subnet.alz-vpn-subnet.id
  }
}

// Create the connection here
resource "azurerm_virtual_network_gateway_connection" "alz-remote-connection" {
  name                            = var.alz_remote_connection_name
  resource_group_name             = var.alz_rg_name
  location                        = var.alz_rg_location
  type                            = "Vnet2Vnet"
  virtual_network_gateway_id      = azurerm_virtual_network_gateway.alz-vn-gateway.id
  peer_virtual_network_gateway_id = var.remote_vn_gateway_id
  shared_key                      = var.vn_gateway_shared_key
  tags                            = var.tags
}

output "alz-vn-gateway-id" {
  value = azurerm_virtual_network_gateway.alz-vn-gateway.id
}