// Create the Virtual Network here
resource "azurerm_virtual_network" "alz-vn" {
  name                = var.alz_vn_name
  address_space       = var.alz_vn_address
  resource_group_name = var.alz_rg_name
  location            = var.alz_rg_location
  tags                = var.tags
}

// Create the Subnet here
resource "azurerm_subnet" "alz-vn-subnet" {
  name                 = var.alz_vn_subnet_name
  resource_group_name  = var.alz_rg_name
  virtual_network_name = azurerm_virtual_network.alz-vn.name
  address_prefixes     = var.alz_vn_subnet_address
}

resource "azurerm_subnet" "alz-firewall-subnet" {
  name                 = "AzureFirewallSubnet"
  resource_group_name  = var.alz_rg_name
  virtual_network_name = azurerm_virtual_network.alz-vn.name
  address_prefixes     = var.alz_firewall_subnet_address
}

resource "azurerm_subnet" "alz-vpn-subnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = var.alz_rg_name
  virtual_network_name = azurerm_virtual_network.alz-vn.name
  address_prefixes     = var.alz_vn_gateway_subnet_address
}

resource "azurerm_subnet" "alz-bastion-subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = var.alz_rg_name
  virtual_network_name = azurerm_virtual_network.alz-vn.name
  address_prefixes     = var.alz_vn_bastion_subnet_address
}

// Create the Prod VN Peering here
resource "azurerm_virtual_network_peering" "alz-prod-vn-peering" {
  name                      = var.alz_prod_vn_peering_name
  resource_group_name       = var.alz_rg_name
  virtual_network_name      = azurerm_virtual_network.alz-vn.name
  remote_virtual_network_id = var.prod_vn_id
}

// Create the Dev VN Peering here
resource "azurerm_virtual_network_peering" "alz-dev-vn-peering" {
  name                      = var.alz_dev_vn_peering_name
  resource_group_name       = var.alz_rg_name
  virtual_network_name      = azurerm_virtual_network.alz-vn.name
  remote_virtual_network_id = var.dev_vn_id
}

// Output necessary stuff
output "alz-vn-id" {
  value = azurerm_virtual_network.alz-vn.id
}

output "alz-subnet-id" {
  value = azurerm_subnet.alz-vn-subnet.id
}