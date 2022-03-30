// Create the PIP for Firewall here
resource "azurerm_public_ip" "alz-firewall-pip" {
  name                = var.alz_firewall_pip_name
  location            = var.alz_rg_location
  resource_group_name = var.alz_rg_name
  allocation_method   = "Static"
  sku                 = "Standard"
}

// Create the Firewall here
resource "azurerm_firewall" "alz-firewall" {
  name                = var.alz_firewall_name
  location            = var.alz_rg_location
  resource_group_name = var.alz_rg_name
  ip_configuration {
    name                 = "alz-firewall-ipc"
    subnet_id            = azurerm_subnet.alz-firewall-subnet.id
    public_ip_address_id = azurerm_public_ip.alz-firewall-pip.id
  }
}

// Create the Firewall Rules here
resource "azurerm_firewall_network_rule_collection" "alz-firewall-deny-ssh-rule" {
  name                = var.alz_firewall_deny_ssh_rule_name
  azure_firewall_name = azurerm_firewall.alz-firewall.name
  resource_group_name = var.alz_rg_name
  priority            = 100
  action              = "Deny"
  rule {
    name = "deny-ssh"
    source_addresses = [
      "0.0.0.0/0",
    ]
    destination_ports = [
      "22",
    ]
    destination_addresses = [
      "10.0.0.0/16"
    ]
    protocols = [
      "TCP",
    ]
  }
}