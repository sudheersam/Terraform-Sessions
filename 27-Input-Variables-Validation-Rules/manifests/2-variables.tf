# Input Variables

# 1. Business Unit Name
variable "business_unit" {
  description = "business unit name"
  type        = string
  default     = "hr"

}
# 2. Environment Name
variable "Environment" {
  description = "environment name"
  type        = string
  default     = "dev"

}
# 3. Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"

}
# 4. Resource Group Location
variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "East US"
  validation {
    /* condition = var.resource_group_location == "East US" || var.resource_group_location == "eastus2" */
    /* condition = contains(["eastus","eastus2"], var.resource_group_location) */
    /* error_message = "We only allow Resources to be created in eastus or eastus2 locations." */
    condition = can(regex("india$", var.resource_group_location))
    error_message = "We only allow Resources to be created in westindia or southindia locations."
  }
}
# 5. Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}


# 6. Subnet Name: Assign When Prompted using CLI

variable "subnet_name" {
  description = "virtual Network  Subnet Name"
  type        = string

}

# 7 Virtual Network address_space

variable "virtual_network_address_space" {
  description = "Virtual Network Address Space"
  type = list(string)
  default = [ "10.0.0.0/16","10.1.0.0/16","10.2.0.0/16" ]

  
}

# 8 public IP SKU

variable "public_ip_sku" {
  description = "Azure Public IP Address SKU"
  type = map(string)
  default = {
    "eastus" = "Basic",
    "eastus2" ="Standard"

  }
  
}

# 9. common Tags

variable "common_tags" {
  description = "common Tags for Azure Resources"
  type = map(string)
  default = {
    "CLITool" = "Terraform",
    "Tag1" = "Azure"

  }
  
}



# 7. Public IP Name
# 8. Network Interface Name
# 9. virtual Machine Name
# 10. VM OS Disk Name
