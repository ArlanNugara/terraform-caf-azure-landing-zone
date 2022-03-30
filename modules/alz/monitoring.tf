// Create the Log Analytics Workspace here
resource "azurerm_log_analytics_workspace" "alz-law" {
  name                = var.alz_law_name
  location            = var.alz_rg_location
  resource_group_name = var.alz_rg_name
  sku                 = var.alz_law_sku
  tags                = var.tags
}