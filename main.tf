resource "azurerm_resource_group" "alz-rg" {
  name     = var.alz_rg_name
  location = var.alz_rg_location
  tags     = var.tags
}

resource "azurerm_resource_group" "dev-rg" {
  name     = var.dev_rg_name
  location = var.dev_rg_location
  tags     = var.tags
}

resource "azurerm_resource_group" "prod-rg" {
  name     = var.prod_rg_name
  location = var.prod_rg_location
  tags     = var.tags
}

resource "azurerm_resource_group" "remote-rg" {
  name     = var.remote_rg_name
  location = var.remote_rg_location
  tags     = var.tags
}

// Trigger ALZ Resources
module "alz" {
  source                          = "./modules/alz"
  alz_vn_name                     = var.alz_vn_name
  alz_vn_address                  = var.alz_vn_address
  alz_rg_name                     = azurerm_resource_group.alz-rg.name
  alz_rg_location                 = azurerm_resource_group.alz-rg.location
  alz_vn_subnet_name              = var.alz_vn_subnet_name
  alz_vn_subnet_address           = var.alz_vn_subnet_address
  alz_firewall_subnet_address     = var.alz_firewall_subnet_address
  alz_vn_gateway_subnet_address   = var.alz_vn_gateway_subnet_address
  alz_vn_bastion_subnet_address   = var.alz_vn_bastion_subnet_address
  alz_prod_vn_peering_name        = var.alz_prod_vn_peering_name
  prod_vn_id                      = module.prod.prod-vn-id
  alz_dev_vn_peering_name         = var.alz_dev_vn_peering_name
  dev_vn_id                       = module.dev.dev-vn-id
  alz_sa_name                     = var.alz_sa_name
  alz_sa_tier                     = var.alz_sa_tier
  alz_sa_replication_type         = var.alz_sa_replication_type
  alz_sa_container_name           = var.alz_sa_container_name
  alz_sa_container_access_type    = var.alz_sa_container_access_type
  alz_firewall_pip_name           = var.alz_firewall_pip_name
  alz_firewall_name               = var.alz_firewall_name
  alz_firewall_deny_ssh_rule_name = var.alz_firewall_deny_ssh_rule_name
  alz_vpn_pip_name                = var.alz_vpn_pip_name
  alz_vn_gateway_name             = var.alz_vn_gateway_name
  alz_remote_connection_name      = var.alz_remote_connection_name
  vn_gateway_shared_key           = var.vn_gateway_shared_key
  remote_vn_gateway_id            = module.remote.remote-vn-gateway-id
  alz_law_name                    = var.alz_law_name
  alz_law_sku                     = var.alz_law_sku
  alz_bastion_pip_name            = var.alz_bastion_pip_name
  alz_bastion_name                = var.alz_bastion_name
  tags                            = var.tags
}

// Trigger Prod Resources
module "dev" {
  source                        = "./modules/dev"
  dev_vn_name                   = var.dev_vn_name
  dev_vn_address                = var.dev_vn_address
  dev_rg_name                   = azurerm_resource_group.dev-rg.name
  dev_rg_location               = azurerm_resource_group.dev-rg.location
  dev_vn_subnet_name            = var.dev_vn_subnet_name
  dev_vn_subnet_address         = var.dev_vn_subnet_address
  dev_alz_vn_peering_name       = var.dev_alz_vn_peering_name
  alz_vn_id                     = module.alz.alz-vn-id
  dev_sa_name                   = var.dev_sa_name
  dev_sa_tier                   = var.dev_sa_tier
  dev_sa_replication_type       = var.dev_sa_replication_type
  dev_sa_container_name         = var.dev_sa_container_name
  dev_sa_container_access_type  = var.dev_sa_container_access_type
  dev_nsg_name                  = var.dev_nsg_name
  dev_nsg_https_allow_rule_name = var.dev_nsg_https_allow_rule_name
  dev_nsg_http_deny_rule_name   = var.dev_nsg_http_deny_rule_name
  dev_vm_nic_name               = var.dev_vm_nic_name
  dev_vm_name                   = var.dev_vm_name
  dev_vm_sku                    = var.dev_vm_sku
  dev_os_publisher              = var.dev_os_publisher
  dev_os_offer                  = var.dev_os_offer
  dev_os_sku                    = var.dev_os_sku
  dev_os_version                = var.dev_os_version
  dev_vm_username               = var.dev_vm_username
  dev_vm_password               = var.dev_vm_password
  dev_law_name                  = var.alz_law_name
  dev_law_sku                   = var.alz_law_sku
  tags                          = var.tags
}

// Trigger Prod Resources
module "prod" {
  source                         = "./modules/prod"
  prod_vn_name                   = var.prod_vn_name
  prod_vn_address                = var.prod_vn_address
  prod_rg_name                   = azurerm_resource_group.prod-rg.name
  prod_rg_location               = azurerm_resource_group.prod-rg.location
  prod_vn_subnet_name            = var.prod_vn_subnet_name
  prod_vn_subnet_address         = var.prod_vn_subnet_address
  prod_ag_subnet_name            = var.prod_ag_subnet_name
  prod_ag_subnet_address         = var.prod_ag_subnet_address
  prod_alz_vn_peering_name       = var.prod_alz_vn_peering_name
  alz_vn_id                      = module.alz.alz-vn-id
  prod_sa_name                   = var.prod_sa_name
  prod_sa_tier                   = var.prod_sa_tier
  prod_sa_replication_type       = var.prod_sa_replication_type
  prod_sa_container_name         = var.prod_sa_container_name
  prod_sa_container_access_type  = var.prod_sa_container_access_type
  prod_nsg_name                  = var.prod_nsg_name
  prod_nsg_https_allow_rule_name = var.prod_nsg_https_allow_rule_name
  prod_nsg_http_deny_rule_name   = var.prod_nsg_http_deny_rule_name
  prod_vm_nic_name               = var.prod_vm_nic_name
  prod_vm_name                   = var.prod_vm_name
  prod_vm_sku                    = var.prod_vm_sku
  prod_os_publisher              = var.prod_os_publisher
  prod_os_offer                  = var.prod_os_offer
  prod_os_sku                    = var.prod_os_sku
  prod_os_version                = var.prod_os_version
  prod_vm_username               = var.prod_vm_username
  prod_vm_password               = var.prod_vm_password
  prod_law_name                  = var.prod_law_name
  prod_law_sku                   = var.prod_law_sku
  prod_ddos_name                 = var.prod_ddos_name
  prod_ag_pip_name               = var.prod_ag_pip_name
  prod_ag_name                   = var.prod_ag_name
  tags                           = var.tags
}

// Trigger Prod Resources
module "remote" {
  source                           = "./modules/remote"
  remote_vn_name                   = var.remote_vn_name
  remote_vn_address                = var.remote_vn_address
  remote_rg_name                   = azurerm_resource_group.remote-rg.name
  remote_rg_location               = azurerm_resource_group.remote-rg.location
  remote_vn_subnet_name            = var.remote_vn_subnet_name
  remote_vn_subnet_address         = var.remote_vn_subnet_address
  remote_vn_gateway_subnet_address = var.remote_vn_gateway_subnet_address
  remote_vpn_pip_name              = var.alz_vpn_pip_name
  remote_vn_gateway_name           = var.alz_vn_gateway_name
  remote_alz_connection_name       = var.remote_alz_connection_name
  vn_gateway_shared_key            = var.vn_gateway_shared_key
  alz_vn_gateway_id                = module.alz.alz-vn-gateway-id
  tags                             = var.tags
}