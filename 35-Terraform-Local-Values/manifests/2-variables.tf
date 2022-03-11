# Input Variables

#1 . Busniess Unit Name
variable "business_unit" {
  description = "Business Unit Name"
  type        = string
  default     = "hr"

}
# Environment Name
variable "environment" {
  description = "Environment Name"
  type        = string
  default     = "dev"
}

# Resource Group Name
variable "resource_group_name" {
  description = "Resource Group Name"
  type        = string
  default     = "myrg"
}

# Resource Group Location
variable "resource_group_location" {
  description = "Resource Group Location"
  type        = string
  default     = "eastus"
}

# Virtual Network Name
variable "virtual_network_name" {
  description = "Virtual Network Name"
  type        = string
  default     = "myvnet"
}
