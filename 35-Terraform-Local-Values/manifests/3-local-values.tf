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

  # Use-case-3: Terraform Dynamic or Conditional Expressions

  # we will learn this when we are dealing with Dynamic Expresssions
  # The expressions assigned to local value names can either be simple constants or can be more complex expressions that transform or combine values from elsewhere in the module.

}
