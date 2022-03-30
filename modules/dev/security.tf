// Create the NSG here
resource "azurerm_network_security_group" "dev-nsg" {
  name                = var.dev_nsg_name
  location            = var.dev_rg_location
  resource_group_name = var.dev_rg_name
  tags                = var.tags
}

// Create the Security Rules here
resource "azurerm_network_security_rule" "dev-nsg-https-allow" {
  name                        = var.dev_nsg_https_allow_rule_name
  priority                    = 100
  direction                   = "Inbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "443"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.dev_rg_name
  network_security_group_name = azurerm_network_security_group.dev-nsg.name
}

resource "azurerm_network_security_rule" "dev-nsg-http-deny" {
  name                        = var.dev_nsg_http_deny_rule_name
  priority                    = 101
  direction                   = "Inbound"
  access                      = "Deny"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "80"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = var.dev_rg_name
  network_security_group_name = azurerm_network_security_group.dev-nsg.name
}