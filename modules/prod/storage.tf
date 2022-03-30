// Create the Storage Account here
resource "azurerm_storage_account" "prod-sa" {
  name                     = var.prod_sa_name
  resource_group_name      = var.prod_rg_name
  location                 = var.prod_rg_location
  account_tier             = var.prod_sa_tier
  account_replication_type = var.prod_sa_replication_type
  tags                     = var.tags
}

// Create the Container here
resource "azurerm_storage_container" "prod-sa-container" {
  name                  = var.prod_sa_container_name
  storage_account_name  = azurerm_storage_account.prod-sa.name
  container_access_type = var.prod_sa_container_access_type
}

// Output necessary stuff
output "prod-sa-id" {
  value = azurerm_storage_account.prod-sa.id
}