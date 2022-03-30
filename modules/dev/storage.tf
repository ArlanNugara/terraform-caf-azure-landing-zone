// Create the Storage Account here
resource "azurerm_storage_account" "dev-sa" {
  name                     = var.dev_sa_name
  resource_group_name      = var.dev_rg_name
  location                 = var.dev_rg_location
  account_tier             = var.dev_sa_tier
  account_replication_type = var.dev_sa_replication_type
  tags                     = var.tags
}

// Create the Container here
resource "azurerm_storage_container" "dev-sa-container" {
  name                  = var.dev_sa_container_name
  storage_account_name  = azurerm_storage_account.dev-sa.name
  container_access_type = var.dev_sa_container_access_type
}

// Output necessary stuff
output "dev-sa-id" {
  value = azurerm_storage_account.dev-sa.id
}