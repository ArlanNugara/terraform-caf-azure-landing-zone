variable "prod_vn_name" {
  type        = string
  description = "Prod Virtual Network Name"
}

variable "prod_vn_address" {
  type        = list(string)
  description = "Prod Virtual Network Address Space"
}

variable "prod_rg_name" {
  type        = string
  description = "Prod RG Name"
}

variable "prod_rg_location" {
  type        = string
  description = "Prod RG location"
}

variable "prod_vn_subnet_name" {
  type        = string
  description = "Prod Subnet Name"
}

variable "prod_vn_subnet_address" {
  type        = list(string)
  description = "Prod Subnet Address"
}

variable "prod_alz_vn_peering_name" {
  type        = string
  description = "prod to Dev Virtual Network Name"
}

variable "alz_vn_id" {
  type        = string
  description = "Dev Virtual Network ID"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
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

variable "prod_ag_subnet_name" {
  type        = string
  description = "Prod Application Gateway Subnet Name"
}

variable "prod_ag_subnet_address" {
  type        = list(string)
  description = "Prod Application Gateway Subnet Address"
}
