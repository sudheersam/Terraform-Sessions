# Terraform Block

terraform {
  required_version = ">=1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 2.0"
    }
  }
}


# Provider-1 for East US (Default Provider)

provider "azurerm" {
    features {}
  
}

# Provider-2 : for West US

provider "azurerm" {
    features {
        virtual_machine {
          delete_os_disk_on_deletion = false
        }
    }
    alias = "provider2-westUS"
    /* client_id = 
    subscription_id = 
    client_secret =  */
  
}