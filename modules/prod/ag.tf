// Create the DDOS protection plan
resource "azurerm_network_ddos_protection_plan" "prod-ddos" {
  name                = var.prod_ddos_name
  resource_group_name = var.prod_rg_name
  location            = var.prod_rg_location
  tags                = var.tags
}

// Create the Public IP address
resource "azurerm_public_ip" "prod-ag-pip" {
  name                = var.prod_ag_pip_name
  resource_group_name = var.prod_rg_name
  location            = var.prod_rg_location
  allocation_method   = "Dynamic"
  sku                 = "Basic"
  tags                = var.tags
}

// Create the Application Gateway
locals {
  backend_address_pool_name      = "${azurerm_virtual_network.prod-vn.name}-beap"
  frontend_port_name             = "${azurerm_virtual_network.prod-vn.name}-feport"
  frontend_ip_configuration_name = "${azurerm_virtual_network.prod-vn.name}-feip"
  http_setting_name              = "${azurerm_virtual_network.prod-vn.name}-be-htst"
  listener_name                  = "${azurerm_virtual_network.prod-vn.name}-httplstn"
  request_routing_rule_name      = "${azurerm_virtual_network.prod-vn.name}-rqrt"
  redirect_configuration_name    = "${azurerm_virtual_network.prod-vn.name}-rdrcfg"
  health_probe_name              = "${azurerm_virtual_network.prod-vn.name}-hp"
  health_probe_host_name         = "${azurerm_virtual_network.prod-vn.name}-hph"
}

resource "azurerm_application_gateway" "prod-ag" {
  name                = var.prod_ag_name
  resource_group_name = var.prod_rg_name
  location            = var.prod_rg_location
  tags                = var.tags
  sku {
    name     = "Standard_Small"
    tier     = "Standard"
    capacity = 1
  }

  gateway_ip_configuration {
    name      = "prod-ag-gt-ipc"
    subnet_id = azurerm_subnet.prod-ag-subnet.id
  }

  frontend_port {
    name = local.frontend_port_name
    port = 80
  }

  frontend_ip_configuration {
    name                 = local.frontend_ip_configuration_name
    public_ip_address_id = azurerm_public_ip.prod-ag-pip.id
  }

  backend_address_pool {
    name         = local.backend_address_pool_name
    ip_addresses = azurerm_linux_virtual_machine.prod-vm.private_ip_addresses
  }

  backend_http_settings {
    name                  = local.http_setting_name
    cookie_based_affinity = "Disabled"
    path                  = "/"
    port                  = 80
    protocol              = "Http"
    request_timeout       = 60
    probe_name            = local.health_probe_name
  }

  http_listener {
    name                           = local.listener_name
    frontend_ip_configuration_name = local.frontend_ip_configuration_name
    frontend_port_name             = local.frontend_port_name
    protocol                       = "Http"
  }

  probe {
    name                = local.health_probe_name
    host                = local.health_probe_host_name
    interval            = 30
    protocol            = "Http"
    path                = "/"
    timeout             = 10
    unhealthy_threshold = 10
  }

  request_routing_rule {
    name                       = local.request_routing_rule_name
    rule_type                  = "Basic"
    http_listener_name         = local.listener_name
    backend_address_pool_name  = local.backend_address_pool_name
    backend_http_settings_name = local.http_setting_name
  }
}