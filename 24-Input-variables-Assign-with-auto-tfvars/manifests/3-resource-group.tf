# Resource group
resource "azurerm_resource_group" "myrg" {
  # name     = "my-rg1"
  # name = "${var.business_unit}-sam"
  name     = "${var.business_unit}-${var.Environment}-${var.resource_group_name}"
  location = var.resource_group_location

}
