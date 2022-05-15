// General variables
variable "alz_rg_name" {
  type        = string
  description = "ALZ RG Name"
  default     = "test-alz-rg"
}

variable "alz_rg_location" {
  type        = string
  description = "ALZ RG Location"
  default     = "Canada Central"
}

variable "prod_rg_name" {
  type        = string
  description = "Prod RG Name"
  default     = "test-prod-rg"
}

variable "prod_rg_location" {
  type        = string
  description = "Prod RG Location"
  default     = "Canada Central"
}

variable "dev_rg_name" {
  type        = string
  description = "Dev RG Name"
  default     = "test-dev-rg"
}

variable "dev_rg_location" {
  type        = string
  description = "Dev RG Location"
  default     = "Canada Central"
}

variable "remote_rg_name" {
  type        = string
  description = "Remote RG Name"
  default     = "test-remote-rg"
}

variable "remote_rg_location" {
  type        = string
  description = "Remote RG Location"
  default     = "Canada Central"
}

variable "tags" {
  type        = map(string)
  description = "Resource Tags"
  default = {
    Env          = "Testing"
    "Created By" = "Terraform"
    Owner        = "Arlan Nugara"
    Region       = "Canada Central"
    Department   = "IT Operations"
    Customer     = "Self"
  }
}

// ALZ variables
variable "alz_vn_name" {
  type        = string
  description = "ALZ Virtual Network Name"
  default     = "alz-vn"
}

variable "alz_vn_address" {
  type        = list(string)
  description = "ALZ Virtual Network Address Space"
  default     = "[10.0.0.0/16]"
}

variable "alz_vn_subnet_name" {
  type        = string
  description = "ALZ Subnet Name"
  default     = "alz-subnet"
}

variable "alz_firewall_subnet_address" {
  type        = list(string)
  description = "ALZ Firewall Subnet address"
  default     = "[10.0.2.0/24]"
}

variable "alz_vn_gateway_subnet_address" {
  type        = list(string)
  description = "ALZ VN gateway Subnet address"
  default     = "[10.0.3.0/24]"
}

variable "alz_vn_subnet_address" {
  type        = list(string)
  description = "ALZ Subnet Address"
  default     = "[10.0.1.0/24]"
}

variable "alz_vn_bastion_subnet_address" {
  type        = list(string)
  description = "ALZ Bastion Subnet Address"
  default     = "[10.0.4.0/24]"
}

variable "alz_prod_vn_peering_name" {
  type        = string
  description = "ALZ to Prod Virtual Network Peering Name"
  default     = "alz-prod-vn-peering"
}

variable "alz_dev_vn_peering_name" {
  type        = string
  description = "ALZ to Dev Virtual Network Name"
  default     = "alz-dev-vn-peering"
}

variable "alz_sa_name" {
  type        = string
  description = "ALZ Storage Account Name"
}

variable "alz_sa_tier" {
  type        = string
  description = "ALZ Storage Account Tier"
  default     = "Standard"
}

variable "alz_sa_replication_type" {
  type        = string
  description = "ALZ Storage Account Replication Type"
  default     = "LRS"
}

variable "alz_sa_container_name" {
  type        = string
  description = "ALZ Storage Account Container Name"
  default     = "alz-container"
}

variable "alz_sa_container_access_type" {
  type        = string
  description = "ALZ Storage Account Container Access Type"
  default     = "private"
}

variable "alz_firewall_pip_name" {
  type        = string
  description = "ALZ Firewall Public IP Address Name"
  default     = "alz-firewall-pip"
}

variable "alz_firewall_name" {
  type        = string
  description = "ALZ Firewall Name"
  default     = "alz-firewall"
}

variable "alz_firewall_deny_ssh_rule_name" {
  type        = string
  description = "ALZ Firewall SSH deny rule name"
  default     = "alz-firewall-deny-ssh-rule"
}

variable "alz_vpn_pip_name" {
  type        = string
  description = "ALZ VPN Public IP name"
  default     = "alz-vpn-pip"
}

variable "alz_vn_gateway_name" {
  type        = string
  description = "ALZ VPN Gateway Name"
  default     = "alz-vn-gateway"
}

variable "alz_remote_connection_name" {
  type        = string
  description = "ALZ to Remote Connection Name"
  default     = "alz-remote-vpn"
}

variable "vn_gateway_shared_key" {
  type        = string
  description = "ALZ to Remote VPN shared Key"
}

variable "alz_law_name" {
  type        = string
  description = "ALZ Log Analytics Workspace Name"
  default     = "prod-law"
}

variable "alz_law_sku" {
  type        = string
  description = "ALZ Log Analytcs Workspace SKU"
  default     = "PerGB2018"
}

variable "alz_bastion_pip_name" {
  type        = string
  description = "ALZ Bastion Public IP Name"
  default     = "alz-bastion-pip"
}

variable "alz_bastion_name" {
  type        = string
  description = "ALZ Bastion Name"
  default     = "alz-bastion"
}

// Dev variables
variable "dev_vn_name" {
  type        = string
  description = "Dev Virtual Network Name"
  default     = "dev-vn"
}

variable "dev_vn_address" {
  type        = list(string)
  description = "Dev Virtual Network Address Space"
  default     = "[172.16.0.0/16]"
}

variable "dev_vn_subnet_name" {
  type        = string
  description = "Dev Subnet Name"
  default     = "dev-subnet"
}

variable "dev_vn_subnet_address" {
  type        = list(string)
  description = "Dev Subnet Address"
  default     = "[172.16.1.0/24]"
}

variable "dev_alz_vn_peering_name" {
  type        = string
  description = "Dev to ALZ Virtual Network Peering Name"
  default     = "dev-alz-vn-peering"
}

variable "dev_sa_name" {
  type        = string
  description = "Dev Storage Account Name"
}

variable "dev_sa_tier" {
  type        = string
  description = "Dev Storage Account Tier"
  default     = "Standard"
}

variable "dev_sa_replication_type" {
  type        = string
  description = "Dev Storage Account Replication Type"
  default     = "LRS"
}

variable "dev_sa_container_name" {
  type        = string
  description = "Dev Storage Account Container Name"
  default     = "dev-container"
}

variable "dev_sa_container_access_type" {
  type        = string
  description = "Dev Storage Account Container Access Type"
  default     = "private"
}

variable "dev_nsg_name" {
  type        = string
  description = "Dev Network Security Group Name"
  default     = "dev-nsg"
}

variable "dev_nsg_https_allow_rule_name" {
  type        = string
  description = "Dev Network Security group HTTPS allow rule name"
  default     = "dev-nsg-https-allow"
}

variable "dev_nsg_http_deny_rule_name" {
  type        = string
  description = "Dev Network Security group HTTP deny rule name"
  default     = "dev-nsg-http-deny"
}

variable "dev_vm_nic_name" {
  type        = string
  description = "Dev VM NIC name"
  default     = "dev-vm-nic"
}

variable "dev_vm_name" {
  type        = string
  description = "Dev VM Name"
  default     = "dev-vm"
}

variable "dev_vm_sku" {
  type        = string
  description = "Dev Vm SKU"
  default     = "Standard_B1ms"
}

variable "dev_vm_username" {
  type        = string
  description = "Dev VM Username"
}

variable "dev_vm_password" {
  type        = string
  description = "Dev VM Password"
}

variable "dev_os_publisher" {
  type        = string
  description = "Dev VM OS Publisher"
  default     = "Canonical"
}

variable "dev_os_offer" {
  type        = string
  description = "Dev VM OS Offer"
  default     = "UbuntuServer"
}

variable "dev_os_sku" {
  type        = string
  description = "Dev VM OS SKU"
  default     = "18.04-LTS"
}

variable "dev_os_version" {
  type        = string
  description = "Dev VM OS Version"
  default     = "latest"
}

variable "dev_law_name" {
  type        = string
  description = "Dev Log Analytics Workspace Name"
  default     = "dev-law"
}

variable "dev_law_sku" {
  type        = string
  description = "Dev Log Analytcs Workspace SKU"
  default     = "PerGB2018"
}

// Prod variables
variable "prod_vn_name" {
  type        = string
  description = "Prod Virtual Network Name"
  default     = "prod-vn"
}

variable "prod_vn_address" {
  type        = list(string)
  description = "Prod Virtual Network Address Space"
  default     = "[192.168.1.0/24]"
}

variable "prod_vn_subnet_name" {
  type        = string
  description = "Prod Subnet Name"
  default     = "prod-subnet"
}

variable "prod_vn_subnet_address" {
  type        = list(string)
  description = "Prod Subnet Address"
  default     = "[192.168.1.0/25]"
}

variable "prod_ag_subnet_name" {
  type        = string
  description = "Prod Application Gateway Subnet Name"
  default     = "prod-ag-subnet"
}

variable "prod_ag_subnet_address" {
  type        = list(string)
  description = "Prod Application Gateway Subnet Address"
  default     = "[192.168.1.128/25]"
}

variable "prod_alz_vn_peering_name" {
  type        = string
  description = "prod to Dev Virtual Network Name"
  default     = "prod-alz-vn-peering"
}

variable "prod_sa_name" {
  type        = string
  description = "prod Storage Account Name"
}

variable "prod_sa_tier" {
  type        = string
  description = "prod Storage Account Tier"
  default     = "Standard"
}

variable "prod_sa_replication_type" {
  type        = string
  description = "prod Storage Account Replication Type"
  default     = "LRS"
}

variable "prod_sa_container_name" {
  type        = string
  description = "prod Storage Account Container Name"
  default     = "prod-container"
}

variable "prod_sa_container_access_type" {
  type        = string
  description = "prod Storage Account Container Access Type"
  default     = "private"
}

variable "prod_nsg_name" {
  type        = string
  description = "Dev Network Security Group Name"
  default     = "prod-nsg"
}

variable "prod_nsg_https_allow_rule_name" {
  type        = string
  description = "Dev Network Security group HTTPS allow rule name"
  default     = "prod-nsg-https-allow"
}

variable "prod_nsg_http_deny_rule_name" {
  type        = string
  description = "Dev Network Security group HTTP deny rule name"
  default     = "prod-nsg-http-deny"
}

variable "prod_vm_nic_name" {
  type        = string
  description = "Prod VM NIC name"
  default     = "prod-vm-nic"
}

variable "prod_vm_name" {
  type        = string
  description = "Prod VM Name"
  default     = "prod-vm"
}

variable "prod_vm_sku" {
  type        = string
  description = "Prod Vm SKU"
  default     = "Standard_B1ms"
}

variable "prod_vm_username" {
  type        = string
  description = "Prod VM Username"
}

variable "prod_vm_password" {
  type        = string
  description = "Prod VM Password"
}

variable "prod_os_publisher" {
  type        = string
  description = "Prod VM OS Publisher"
  default     = "Canonical"
}

variable "prod_os_offer" {
  type        = string
  description = "Prod VM OS Offer"
  default     = "UbuntuServer"
}

variable "prod_os_sku" {
  type        = string
  description = "Prod VM OS SKU"
  default     = "18.04-LTS"
}

variable "prod_os_version" {
  type        = string
  description = "Prod VM OS Version"
  default     = "latest"
}

variable "prod_law_name" {
  type        = string
  description = "Prod Log Analytics Workspace Name"
  default     = "prod-law"
}

variable "prod_law_sku" {
  type        = string
  description = "Prod Log Analytcs Workspace SKU"
  default     = "PerGB2018"
}

variable "prod_ddos_name" {
  type        = string
  description = "Prod DDOS Plan Name"
  default     = "prod-ddos-plan"
}

variable "prod_ag_pip_name" {
  type        = string
  description = "Prod Application Gateway Public IP Name"
  default     = "prod-ag-pip"
}

variable "prod_ag_name" {
  type        = string
  description = "Prod Application Gateway Name"
  default     = "prod-ag"
}

// Remote variables
variable "remote_vn_name" {
  type        = string
  description = "remote Virtual Network Name"
  default     = "remote-vn"
}

variable "remote_vn_address" {
  type        = list(string)
  description = "remote Virtual Network Address Space"
  default     = "[192.168.2.0/24]"
}

variable "remote_vn_subnet_name" {
  type        = string
  description = "remote Subnet Name"
  default     = "remote-subnet"
}

variable "remote_vn_subnet_address" {
  type        = list(string)
  description = "remote Subnet Address"
  default     = "[192.168.2.0/25]"
}

variable "remote_vn_gateway_subnet_address" {
  type        = list(string)
  description = "Remote VN Gateway Address"
  default     = "[192.168.2.128/25]"
}

variable "remote_vpn_pip_name" {
  type        = string
  description = "Remote VPN Public IP name"
  default     = "remote-vpn-pip"
}

variable "remote_vn_gateway_name" {
  type        = string
  description = "Remote VPN Gateway Name"
  default     = "remote-vn-gateway"
}

variable "remote_alz_connection_name" {
  type        = string
  description = "Remote to ALZ Connection Name"
  default     = "remote-alz-vpn"
}
