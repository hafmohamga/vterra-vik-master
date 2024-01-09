# data "azurerm_resource_group" "rgvterra" {
#   name = ""
# }


resource "azurerm_resource_group" "rg" {
  location = var.location
  name     =  var.resource_group_name
}