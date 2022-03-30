// Generic variable values
alz_rg_name        = "test-alz-rg"
alz_rg_location    = "Canada Central"
dev_rg_name        = "test-dev-rg"
dev_rg_location    = "Canada Central"
prod_rg_name       = "test-prod-rg"
prod_rg_location   = "Canada Central"
remote_rg_name     = "test-remote-rg"
remote_rg_location = "Canada Central"

// ALZ variable values
alz_vn_name                     = "alz-vn"
alz_vn_address                  = ["10.0.0.0/16"]
alz_vn_subnet_name              = "alz-subnet"
alz_vn_subnet_address           = ["10.0.1.0/24"]
alz_firewall_subnet_address     = ["10.0.2.0/24"]
alz_vn_gateway_subnet_address   = ["10.0.3.0/24"]
alz_vn_bastion_subnet_address   = ["10.0.4.0/24"]
alz_sa_name                     = "<Your Value Here>"
alz_sa_tier                     = "Standard"
alz_sa_replication_type         = "LRS"
alz_sa_container_name           = "alz-container"
alz_sa_container_access_type    = "private"
alz_prod_vn_peering_name        = "alz-prod-vn-peering"
alz_dev_vn_peering_name         = "alz-dev-vn-peering"
alz_firewall_pip_name           = "alz-firewall-pip"
alz_firewall_name               = "alz-firewall"
alz_firewall_deny_ssh_rule_name = "alz-firewall-deny-ssh-rule"
alz_vpn_pip_name                = "alz-vpn-pip"
alz_vn_gateway_name             = "alz-vn-gateway"
alz_remote_connection_name      = "alz-remote-vpn"
alz_law_name                    = "prod-law"
alz_law_sku                     = "PerGB2018"
alz_bastion_pip_name            = "alz-bastion-pip"
alz_bastion_name                = "alz-bastion"

// Dev variable values
dev_vn_name                   = "dev-vn"
dev_vn_address                = ["172.16.0.0/16"]
dev_vn_subnet_name            = "dev-subnet"
dev_vn_subnet_address         = ["172.16.1.0/24"]
dev_sa_name                   = "<Your Value Here>"
dev_sa_tier                   = "Standard"
dev_sa_replication_type       = "LRS"
dev_sa_container_name         = "dev-container"
dev_sa_container_access_type  = "private"
dev_alz_vn_peering_name       = "dev-alz-vn-peering"
dev_nsg_name                  = "dev-nsg"
dev_nsg_https_allow_rule_name = "dev-nsg-https-allow"
dev_nsg_http_deny_rule_name   = "dev-nsg-http-deny"
dev_vm_nic_name               = "dev-vm-nic"
dev_vm_name                   = "dev-vm"
dev_vm_sku                    = "Standard_B1ms"
dev_os_publisher              = "Canonical"
dev_os_offer                  = "UbuntuServer"
dev_os_sku                    = "18.04-LTS"
dev_os_version                = "latest"
dev_law_name                  = "dev-law"
dev_law_sku                   = "PerGB2018"

// Prod variable values
prod_vn_name                   = "prod-vn"
prod_vn_address                = ["192.168.1.0/24"]
prod_vn_subnet_name            = "prod-subnet"
prod_vn_subnet_address         = ["192.168.1.0/25"]
prod_ag_subnet_name            = "prod-ag-subnet"
prod_ag_subnet_address         = ["192.168.1.128/25"]
prod_sa_name                   = "<Your Value Here>"
prod_sa_tier                   = "Standard"
prod_sa_replication_type       = "LRS"
prod_sa_container_name         = "prod-container"
prod_sa_container_access_type  = "private"
prod_alz_vn_peering_name       = "prod-alz-vn-peering"
prod_nsg_name                  = "prod-nsg"
prod_nsg_https_allow_rule_name = "prod-nsg-https-allow"
prod_nsg_http_deny_rule_name   = "prod-nsg-http-deny"
prod_vm_nic_name               = "prod-vm-nic"
prod_vm_name                   = "prod-vm"
prod_vm_sku                    = "Standard_B1ms"
prod_os_publisher              = "Canonical"
prod_os_offer                  = "UbuntuServer"
prod_os_sku                    = "18.04-LTS"
prod_os_version                = "latest"
prod_law_name                  = "prod-law"
prod_law_sku                   = "PerGB2018"
prod_ddos_name                 = "prod-ddos-plan"
prod_ag_pip_name               = "prod-ag-pip"
prod_ag_name                   = "prod-ag"

// Remote variable values
remote_vn_name                   = "remote-vn"
remote_vn_address                = ["192.168.2.0/24"]
remote_vn_subnet_name            = "remote-subnet"
remote_vn_subnet_address         = ["192.168.2.0/25"]
remote_vn_gateway_subnet_address = ["192.168.2.128/25"]
remote_vpn_pip_name              = "remote-vpn-pip"
remote_vn_gateway_name           = "remote-vn-gateway"
remote_alz_connection_name       = "remote-alz-vpn"