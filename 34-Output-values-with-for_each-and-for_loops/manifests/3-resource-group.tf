# resource group

resource "azurerm_resource_group" "myrg" {
    name = "myrg1"
    location = var.resource_group_location
  
}