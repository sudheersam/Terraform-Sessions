# Local values Block
locals {
  # Use-case-1:Shorten the names for more readability
  rg_name   = "${var.business_unit}-${var.environment}-${var.resource_group_name}"
  vnet_name = "${var.business_unit}-${var.environment}-${var.virtual_network_name}"

  # Use-case-2: Common tags to be assigned to all resources
  service_name = "Demo Services"
  owner ="sudheer sam"
  common_tags ={
      service = local.service_name
      owner = local.owner

  }

  # Use-case-3: Terraform Conditional Expressions
  # we will learn this when we are dealing with Conditional Expresssions
  # The expressions assigned to local value names can either be simple constants or can be more complex expressions that transform or combine values from elsewhere in the module.
  # Option-1 : with Equals(==)
  vnet_address_space = (var.environment == "dev" ? var.vnet_address_space_dev : var.vnet_address_space_all)

  # Option-2: with Not Equals(!=)

  /* vnet_address_space = (var.environment != "dev" ? var.vnet_address_space_all : var.vnet_address_space_dev) */
}
