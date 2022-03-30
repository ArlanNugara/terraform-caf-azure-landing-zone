variable "alz_vn_name" {
  type        = string
  description = "ALZ Virtual Network Name"
}

variable "alz_vn_address" {
  type        = list(string)
  description = "ALZ Virtual Network Address Space"
}

variable "alz_rg_name" {
  type        = string
  description = "ALZ RG Name"
}

variable "alz_rg_location" {
  type        = string
  description = "ALZ RG location"
}

variable "alz_vn_subnet_name" {
  type        = string
  description = "ALZ Subnet Name"
}

variable "alz_vn_subnet_address" {
  type        = list(string)
  description = "ALZ Subnet Address"
}

variable "alz_firewall_subnet_address" {
  type        = list(string)
  description = "ALZ Firewall Subnet address"
}

variable "alz_vn_gateway_subnet_address" {
  type        = list(string)
  description = "ALZ VN gateway Subnet address"
}

variable "alz_vn_bastion_subnet_address" {
  type        = list(string)
  description = "ALZ Bastion Subnet Address"
}

variable "alz_prod_vn_peering_name" {
  type        = string
  description = "ALZ to Prod Virtual Network Peering Name"
}

variable "prod_vn_id" {
  type        = string
  description = "Prod Virtual Network ID"
}

variable "alz_dev_vn_peering_name" {
  type        = string
  description = "ALZ to Dev Virtual Network Name"
}

variable "dev_vn_id" {
  type        = string
  description = "Dev Virtual Network ID"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
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

variable "remote_vn_gateway_id" {
  type        = string
  description = "Remote VN Gateway ID"
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
