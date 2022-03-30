// Create the Virtual Network here
resource "azurerm_virtual_network" "dev-vn" {
  name                = var.dev_vn_name
  address_space       = var.dev_vn_address
  resource_group_name = var.dev_rg_name
  location            = var.dev_rg_location
  tags                = var.tags
}

// Create the Subnet here
resource "azurerm_subnet" "dev-vn-subnet" {
  name                 = var.dev_vn_subnet_name
  resource_group_name  = var.dev_rg_name
  virtual_network_name = azurerm_virtual_network.dev-vn.name
  address_prefixes     = var.dev_vn_subnet_address
}

// Create the Dev VN Peering here
resource "azurerm_virtual_network_peering" "dev-prod-vn-peering" {
  name                      = var.dev_alz_vn_peering_name
  resource_group_name       = var.dev_rg_name
  virtual_network_name      = azurerm_virtual_network.dev-vn.name
  remote_virtual_network_id = var.alz_vn_id
}

// Output necessary stuff
output "dev-vn-id" {
  value = azurerm_virtual_network.dev-vn.id
}

output "dev-subnet-id" {
  value = azurerm_subnet.dev-vn-subnet.id
}