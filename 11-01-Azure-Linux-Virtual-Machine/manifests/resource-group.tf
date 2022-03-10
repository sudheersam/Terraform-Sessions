# create Resource group

resource "azurerm_resource_group" "mrg" {
    name = "myrg-10"
    location = "East Us"
    
}