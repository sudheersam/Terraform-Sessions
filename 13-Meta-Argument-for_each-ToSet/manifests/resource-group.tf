# Resource Group

resource "azurerm_resource_group" "myrg" {
    for_each = toset(["eastus","eastus2","westus"])
    name = "myrg-${each.value}"
    location = each.key
  
}