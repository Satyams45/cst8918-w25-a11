terraform {
  required_version = "~> 1.5"

  backend "azurerm" {
    resource_group_name  = "lab10-cst8918-tf-backend"
    storage_account_name = "satyams45tfstorage"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.96.0"
    }
  }
}
