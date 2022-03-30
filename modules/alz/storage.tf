// Create the Storage Account here
resource "azurerm_storage_account" "alz-sa" {
  name                     = var.alz_sa_name
  resource_group_name      = var.alz_rg_name
  location                 = var.alz_rg_location
  account_tier             = var.alz_sa_tier
  account_replication_type = var.alz_sa_replication_type
  tags                     = var.tags
}

// Create the Container here
resource "azurerm_storage_container" "alz-sa-container" {
  name                  = var.alz_sa_container_name
  storage_account_name  = azurerm_storage_account.alz-sa.name
  container_access_type = var.alz_sa_container_access_type
}

// Output necessary stuff
output "alz-sa-id" {
  value = azurerm_storage_account.alz-sa.id
}