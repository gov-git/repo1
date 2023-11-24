terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 2.59.0"
    }
  }
  # Required version = "1.0.0"
}

provider "azurerm" {
  features {}
}

terraform {
  backend "azurerm" {  
  }
}

module "resourcegroup" {
  source = "./modules/resource_group"
  resource_group = var.resource_group
  location = var.location
  tags = var.tags
}

module "storage_account01" {
  source = "./module/storage_account"
  storageaccount           = var.storageaccount01
  depends_on               = [module.resourcegroup]
  resourcegroup            = var.resourcegroup
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.sku
}

module "storageaccount02" {
  source = "./modules/storage_account"
  storageaccount           = var.storageaccount02
  depends_on               = [module.resourcegroup]
  resourcegroup            = var.resourcegroup
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.sku
  
}
