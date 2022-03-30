// Create the NSG here
resource "azurerm_network_security_group" "prod-nsg" {
  name                = var.prod_nsg_name
  location            = var.prod_rg_location
  resource_group_name = var.prod_rg_name
  tags                = var.tags
}

// Create the Security Rules here
resource "azurerm_network_security_rule" "prod-nsg-https-allow" {
  name                        = var.prod_nsg_https_allow_rule_name
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.prod_rg_name
  network_security_group_name = azurerm_network_security_group.prod-nsg.name
}

resource "azurerm_network_security_rule" "prod-nsg-http-deny" {
  name                        = var.prod_nsg_http_deny_rule_name
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.prod_rg_name
  network_security_group_name = azurerm_network_security_group.prod-nsg.name
}