# Input Variables

# 1. Business Unit Name
variable "business_unit" {
    description = "business unit name"
    type = string
    default = "hr"
  
}
# 2. Environment Name
variable "Environment" {
    description = "environment name"
    type = string
    default = "dev"
  
}
# 3. Resource Group Name
variable "resource_group_name" {
    description = "Resource Group Name"
    type = string
    default = "myrg"
  
}
# 4. Resource Group Location
variable "resource_group_location" {
    description = "Resource Group Location"
    type = string
    default = "East US"
}
# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type = string
  default = "myvnet"
}


# You can add Like this many more argument values from each resource 

# 6. Subnet Name
# 7. Public IP Name
# 8. Network Interface Name
# 9. virtual Machine Name
# 10. VM OS Disk Name
