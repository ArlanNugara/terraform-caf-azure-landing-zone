variable "remote_vn_name" {
  type        = string
  description = "remote Virtual Network Name"
}

variable "remote_vn_address" {
  type        = list(string)
  description = "remote Virtual Network Address Space"
}

variable "remote_rg_name" {
  type        = string
  description = "remote RG Name"
}

variable "remote_rg_location" {
  type        = string
  description = "remote RG location"
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

variable "vn_gateway_shared_key" {
  type        = string
  description = "Remote to Remote VPN shared Key"
}

variable "alz_vn_gateway_id" {
  type        = string
  description = "ALZ VN Gateway ID"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}
