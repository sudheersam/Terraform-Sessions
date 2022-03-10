# Create a resource group in East Us region - Uses Default Provider

resource "azurerm_resource_group" "myrg1" {
    name = "myrg-13"
    location = "East US"
  
}

# Create a resource group in West Us region - Uses "provider2-westus" provider

resource "azurerm_resource_group" "myrg2" {
    name = "myrg-14"
    location = "West US"
    provider = azurerm.provider2-westUS
  
}