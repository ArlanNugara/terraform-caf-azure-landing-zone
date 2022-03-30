terraform {
  required_version = "~> 1.1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.98.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-terraform-policy-state"
    storage_account_name = "alvtfsa"
    container_name       = "tfstate"
    key                  = "landingzone.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
