# resource group

resource "azurerm_resource_group" "myrg" {
  /* name ="${var.business_unit}-${var.environment}-${var.resource_group_name}" */
  name     = local.rg_name
  location = var.resource_group_location
  tags = local.common_tags

}
