# Terraform Block

terraform {
  required_version = ">=0.15"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=2.0"
    }
  }
}

# Provider Block

provider "azurerm" {
  features {}

}


#Random String Resource

resource "random_string" "myrandom" {
  length  = 16
  upper   = false
  special = false
  number  = false


}
