// Create the Log Analytics Workspace here
resource "azurerm_log_analytics_workspace" "prod-law" {
  name                = var.prod_law_name
  location            = var.prod_rg_location
  resource_group_name = var.prod_rg_name
  sku                 = var.prod_law_sku
}