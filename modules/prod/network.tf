// Create the Virtual Network here
resource "azurerm_virtual_network" "prod-vn" {
  name                = var.prod_vn_name
  address_space       = var.prod_vn_address
  resource_group_name = var.prod_rg_name
  location            = var.prod_rg_location
  tags                = var.tags
}

// Create the Subnet here
resource "azurerm_subnet" "prod-vn-subnet" {
  name                 = var.prod_vn_subnet_name
  resource_group_name  = var.prod_rg_name
  virtual_network_name = azurerm_virtual_network.prod-vn.name
  address_prefixes     = var.prod_vn_subnet_address
}

resource "azurerm_subnet" "prod-ag-subnet" {
  name                 = var.prod_ag_subnet_name
  resource_group_name  = var.prod_rg_name
  virtual_network_name = azurerm_virtual_network.prod-vn.name
  address_prefixes     = var.prod_ag_subnet_address
}

// Create the ALZ VN Peering here
resource "azurerm_virtual_network_peering" "prod-prod-vn-peering" {
  name                      = var.prod_alz_vn_peering_name
  resource_group_name       = var.prod_rg_name
  virtual_network_name      = azurerm_virtual_network.prod-vn.name
  remote_virtual_network_id = var.alz_vn_id
}

// Output necessary stuff
output "prod-vn-id" {
  value = azurerm_virtual_network.prod-vn.id
}

output "prod-subnet-id" {
  value = azurerm_subnet.prod-vn-subnet.id
}