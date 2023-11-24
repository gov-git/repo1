resource "azurerm_storage_account" "storage_account" {
  name = var.storage_account
  resource_group_name = var.resource_group
  location = var.location
  account_tier = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}