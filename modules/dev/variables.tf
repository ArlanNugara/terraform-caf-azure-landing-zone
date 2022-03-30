variable "dev_vn_name" {
  type        = string
  description = "Dev Virtual Network Name"
}

variable "dev_vn_address" {
  type        = list(string)
  description = "Dev Virtual Network Address Space"
}

variable "dev_rg_name" {
  type        = string
  description = "Dev RG Name"
}

variable "dev_rg_location" {
  type        = string
  description = "Dev RG location"
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

variable "alz_vn_id" {
  type        = string
  description = "ALZ Virtual Network ID"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
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