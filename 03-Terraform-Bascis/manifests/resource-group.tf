# Terraform  Settings Block
terraform {
    required_version = ">=1.0.0"
    required_providers {
      azurerm ={
          source = "hashicorp/azurerm"
          version = ">= 2.0"
      }
    }
  
}


# Configure the Microsoft Azure Provider

provider "azurerm" {
    features {}
  
}


# Create Resource Group

resource "azurerm_resource_group" "my_demo_rg1" {
    location = "East US"
    name = "my-demo-rg1"
  
}
