# Terraform Block

terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 2.0"
    }

    random = {
      source  = "hashicorp/azurerm"
      version = ">=3.0"
    }
  }
}


provider "azurerm" {
  # Configuration options
  features {}
}

# Random String Resource

resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  number  = false

}
