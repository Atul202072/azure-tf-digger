terraform {
  required_version = ">= 1.5.0"

  backend "azurerm" {
    resource_group_name  = "Cloud-Apex"
    storage_account_name = "cloudapex"
    container_name       = "digger-tf-statefile"
    key                  = "digger-demo.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "digger_demo" {
  name     = "rg-digger-demo"
  location = "Central India"
}
