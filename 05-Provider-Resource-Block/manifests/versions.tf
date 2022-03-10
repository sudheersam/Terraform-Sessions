# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = ">=2.0"
        /* version = ">= 2.0.0, < 2.60.0" */
        /* version = ">= 2.0.0, <= 2.64.0" */
        #version = "~> 2.64"  # For production grade

    }
  }
}


# Prodiver Block

provider "azurerm" {
    features {}
  
}







/* Play with Terraform CLI Version (we installed 1.1.4 version)
    required_version = "~>0.14.3" -will fail
    required_version = "~>0.14" -will fail
    required_version = "=0.14.4" -will fail
    required_version = ">= 0.13" -will pass
    required_version = "=1.0.0" -will fail
    required_version = "1.0.0" -will fail
    required_version = ">=1.0.0" -will pass */





/* Play with Prodiver Version (as on today latest version is 2.64.0)
        version = "~> 2.0"
        version = ">= 2.0.0,  < 2.60.0"
        version = ">= 2.0.0, <= 2.64.0" */