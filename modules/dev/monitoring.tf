// Create the Log Analytics Workspace here
resource "azurerm_log_analytics_workspace" "dev-law" {
  name                = var.dev_law_name
  location            = var.dev_rg_location
  resource_group_name = var.dev_rg_name
  sku                 = var.dev_law_sku
}