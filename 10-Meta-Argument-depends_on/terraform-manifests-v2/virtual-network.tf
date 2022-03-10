# Create virtual network

resource "azurerm_virtual_network" "mvnet" {
  name = "myvnet132"
  location = azurerm_resource_group.mrg.location
  address_space = [ "10.0.0.0/16" ]
  resource_group_name = azurerm_resource_group.mrg.name

  tags = {
    "Name" = "myvnet-1"
    "Environment" = "Dev"
  }
}


# Create Subnet

resource "azurerm_subnet" "mysubnet" {
    name = "my_subnet1"
    resource_group_name = azurerm_resource_group.mrg.name
    address_prefixes = [ "10.0.2.0/24" ]
    virtual_network_name = azurerm_virtual_network.mvnet.name
  
}

# Create Public Ip address

resource "azurerm_public_ip" "mypublicIP" {
    # Add Explicit Dependency to have this resource created only after virtual Network and Subnet

    depends_on = [
      azurerm_virtual_network.mvnet,
      azurerm_subnet.mysubnet
    ]
    name = "mypublicIP-12"
    resource_group_name = azurerm_resource_group.mrg.name
    location = azurerm_resource_group.mrg.location
    allocation_method = "Static"
    domain_name_label = "app1-vm-${random_string.myrandom.id}"

    tags = {
      " enivornment" = "Dev"
    }
  
}
# Create Network Interface

resource "azurerm_network_interface" "myvmnic" {
    name = "myvmic-14"
    resource_group_name = azurerm_resource_group.mrg.name
    location = azurerm_resource_group.mrg.location

    ip_configuration {
      public_ip_address_id = azurerm_public_ip.mypublicIP.id
      name = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_id = azurerm_subnet.mysubnet.id
    }
    
  
}
