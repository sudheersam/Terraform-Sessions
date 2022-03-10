# Resource Group

resource "azurerm_resource_group" "myrg" {
    for_each = {
        dc1apps = "East us"
        dc2apps = "East us2"
        dc3apps = "West US"
    }
    name = "${each.key}-rg"
    location = each.value
    

  
}