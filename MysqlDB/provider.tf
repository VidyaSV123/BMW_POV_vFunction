terraform {
  required_version = ">=1.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }
    backend "azurerm" {
    resource_group_name  = "StorageAccountsRG"
    storage_account_name = "baboterraform1234"
    container_name       = "tfstatecontainer"
    key                  = "terraform-base.tfstate"
  }
}


provider "azurerm" {
  features {}
}
