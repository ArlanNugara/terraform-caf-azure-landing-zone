// General variables
variable "alz_rg_name" {
  type        = string
  description = "ALZ RG Name"
}

variable "alz_rg_location" {
  type        = string
  description = "ALZ RG Location"
}

variable "prod_rg_name" {
  type        = string
  description = "Prod RG Name"
}

variable "prod_rg_location" {
  type        = string
  description = "Prod RG Location"
}

variable "dev_rg_name" {
  type        = string
  description = "Dev RG Name"
}

variable "dev_rg_location" {
  type        = string
  description = "Dev RG Location"
}

variable "remote_rg_name" {
  type        = string
  description = "Remote RG Name"
}

variable "remote_rg_location" {
  type        = string
  description = "Remote RG Location"
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
}

variable "alz_vn_address" {
  type        = list(string)
  description = "ALZ Virtual Network Address Space"
}

variable "alz_vn_subnet_name" {
  type        = string
  description = "ALZ Subnet Name"
}

variable "alz_firewall_subnet_address" {
  type        = list(string)
  description = "ALZ Firewall Subnet address"
}

variable "alz_vn_gateway_subnet_address" {
  type        = list(string)
  description = "ALZ VN gateway Subnet address"
}

variable "alz_vn_subnet_address" {
  type        = list(string)
  description = "ALZ Subnet Address"
}

variable "alz_vn_bastion_subnet_address" {
  type        = list(string)
  description = "ALZ Bastion Subnet Address"
}

variable "alz_prod_vn_peering_name" {
  type        = string
  description = "ALZ to Prod Virtual Network Peering Name"
}

variable "alz_dev_vn_peering_name" {
  type        = string
  description = "ALZ to Dev Virtual Network Name"
}

variable "alz_sa_name" {
  type        = string
  description = "ALZ Storage Account Name"
}

variable "alz_sa_tier" {
  type        = string
  description = "ALZ Storage Account Tier"
}

variable "alz_sa_replication_type" {
  type        = string
  description = "ALZ Storage Account Replication Type"
}

variable "alz_sa_container_name" {
  type        = string
  description = "ALZ Storage Account Container Name"
}

variable "alz_sa_container_access_type" {
  type        = string
  description = "ALZ Storage Account Container Access Type"
}

variable "alz_firewall_pip_name" {
  type        = string
  description = "ALZ Firewall Public IP Address Name"
}

variable "alz_firewall_name" {
  type        = string
  description = "ALZ Firewall Name"
}

variable "alz_firewall_deny_ssh_rule_name" {
  type        = string
  description = "ALZ Firewall SSH deny rule name"
}

variable "alz_vpn_pip_name" {
  type        = string
  description = "ALZ VPN Public IP name"
}

variable "alz_vn_gateway_name" {
  type        = string
  description = "ALZ VPN Gateway Name"
}

variable "alz_remote_connection_name" {
  type        = string
  description = "ALZ to Remote Connection Name"
}

variable "vn_gateway_shared_key" {
  type        = string
  description = "ALZ to Remote VPN shared Key"
}

variable "alz_law_name" {
  type        = string
  description = "ALZ Log Analytics Workspace Name"
}

variable "alz_law_sku" {
  type        = string
  description = "ALZ Log Analytcs Workspace SKU"
}

variable "alz_bastion_pip_name" {
  type        = string
  description = "ALZ Bastion Public IP Name"
}

variable "alz_bastion_name" {
  type        = string
  description = "ALZ Bastion Name"
}

// Dev variables
variable "dev_vn_name" {
  type        = string
  description = "Dev Virtual Network Name"
}

variable "dev_vn_address" {
  type        = list(string)
  description = "Dev Virtual Network Address Space"
}

variable "dev_vn_subnet_name" {
  type        = string
  description = "Dev Subnet Name"
}

variable "dev_vn_subnet_address" {
  type        = list(string)
  description = "Dev Subnet Address"
}

variable "dev_alz_vn_peering_name" {
  type        = string
  description = "Dev to ALZ Virtual Network Peering Name"
}

variable "dev_sa_name" {
  type        = string
  description = "Dev Storage Account Name"
}

variable "dev_sa_tier" {
  type        = string
  description = "Dev Storage Account Tier"
}

variable "dev_sa_replication_type" {
  type        = string
  description = "Dev Storage Account Replication Type"
}

variable "dev_sa_container_name" {
  type        = string
  description = "Dev Storage Account Container Name"
}

variable "dev_sa_container_access_type" {
  type        = string
  description = "Dev Storage Account Container Access Type"
}

variable "dev_nsg_name" {
  type        = string
  description = "Dev Network Security Group Name"
}

variable "dev_nsg_https_allow_rule_name" {
  type        = string
  description = "Dev Network Security group HTTPS allow rule name"
}

variable "dev_nsg_http_deny_rule_name" {
  type        = string
  description = "Dev Network Security group HTTP deny rule name"
}

variable "dev_vm_nic_name" {
  type        = string
  description = "Dev VM NIC name"
}

variable "dev_vm_name" {
  type        = string
  description = "Dev VM Name"
}

variable "dev_vm_sku" {
  type        = string
  description = "Dev Vm SKU"
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
}

variable "dev_os_offer" {
  type        = string
  description = "Dev VM OS Offer"
}

variable "dev_os_sku" {
  type        = string
  description = "Dev VM OS SKU"
}

variable "dev_os_version" {
  type        = string
  description = "Dev VM OS Version"
}

variable "dev_law_name" {
  type        = string
  description = "Dev Log Analytics Workspace Name"
}

variable "dev_law_sku" {
  type        = string
  description = "Dev Log Analytcs Workspace SKU"
}

// Prod variables
variable "prod_vn_name" {
  type        = string
  description = "Prod Virtual Network Name"
}

variable "prod_vn_address" {
  type        = list(string)
  description = "Prod Virtual Network Address Space"
}

variable "prod_vn_subnet_name" {
  type        = string
  description = "Prod Subnet Name"
}

variable "prod_vn_subnet_address" {
  type        = list(string)
  description = "Prod Subnet Address"
}

variable "prod_ag_subnet_name" {
  type        = string
  description = "Prod Application Gateway Subnet Name"
}

variable "prod_ag_subnet_address" {
  type        = list(string)
  description = "Prod Application Gateway Subnet Address"
}

variable "prod_alz_vn_peering_name" {
  type        = string
  description = "prod to Dev Virtual Network Name"
}

variable "prod_sa_name" {
  type        = string
  description = "prod Storage Account Name"
}

variable "prod_sa_tier" {
  type        = string
  description = "prod Storage Account Tier"
}

variable "prod_sa_replication_type" {
  type        = string
  description = "prod Storage Account Replication Type"
}

variable "prod_sa_container_name" {
  type        = string
  description = "prod Storage Account Container Name"
}

variable "prod_sa_container_access_type" {
  type        = string
  description = "prod Storage Account Container Access Type"
}

variable "prod_nsg_name" {
  type        = string
  description = "Dev Network Security Group Name"
}

variable "prod_nsg_https_allow_rule_name" {
  type        = string
  description = "Dev Network Security group HTTPS allow rule name"
}

variable "prod_nsg_http_deny_rule_name" {
  type        = string
  description = "Dev Network Security group HTTP deny rule name"
}

variable "prod_vm_nic_name" {
  type        = string
  description = "Prod VM NIC name"
}

variable "prod_vm_name" {
  type        = string
  description = "Prod VM Name"
}

variable "prod_vm_sku" {
  type        = string
  description = "Prod Vm SKU"
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
}

variable "prod_os_offer" {
  type        = string
  description = "Prod VM OS Offer"
}

variable "prod_os_sku" {
  type        = string
  description = "Prod VM OS SKU"
}

variable "prod_os_version" {
  type        = string
  description = "Prod VM OS Version"
}

variable "prod_law_name" {
  type        = string
  description = "Prod Log Analytics Workspace Name"
}

variable "prod_law_sku" {
  type        = string
  description = "Prod Log Analytcs Workspace SKU"
}

variable "prod_ddos_name" {
  type        = string
  description = "Prod DDOS Plan Name"
}

variable "prod_ag_pip_name" {
  type        = string
  description = "Prod Application Gateway Public IP Name"
}

variable "prod_ag_name" {
  type        = string
  description = "Prod Application Gateway Name"
}

// Remote variables
variable "remote_vn_name" {
  type        = string
  description = "remote Virtual Network Name"
}

variable "remote_vn_address" {
  type        = list(string)
  description = "remote Virtual Network Address Space"
}

variable "remote_vn_subnet_name" {
  type        = string
  description = "remote Subnet Name"
}

variable "remote_vn_subnet_address" {
  type        = list(string)
  description = "remote Subnet Address"
}

variable "remote_vn_gateway_subnet_address" {
  type        = list(string)
  description = "Remote VN Gateway Address"
}

variable "remote_vpn_pip_name" {
  type        = string
  description = "Remote VPN Public IP name"
}

variable "remote_vn_gateway_name" {
  type        = string
  description = "Remote VPN Gateway Name"
}

variable "remote_alz_connection_name" {
  type        = string
  description = "Remote to ALZ Connection Name"
}