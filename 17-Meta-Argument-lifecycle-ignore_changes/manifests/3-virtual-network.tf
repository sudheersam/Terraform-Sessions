# Create virtual network

resource "azurerm_virtual_network" "mvnet" {
  name                = "myvnet-1"
    location            = azurerm_resource_group.mrg.location
  address_space       = ["10.0.0.0/16"]
  resource_group_name = azurerm_resource_group.mrg.name
  tags = {
    "Name" = "VNET-1"
    "Environment" = "Dev1"
  }


lifecycle {
  ignore_changes = [
    tags,
  ]
}



}
