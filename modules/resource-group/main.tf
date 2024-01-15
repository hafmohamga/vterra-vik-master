# data "azurerm_resource_group" "rgvterra" {
#   name = ""
# }


resource "azurerm_resource_group" "rg" {
  location = var.location
  name     =  var.resource_group_name
}

# resource "azurerm_resource_group" "rg-east" {
#   location = var.location
#   # name     =  var.eis_preprod_int_east_rg_name
#   name = var.resource_group_name
# }

# resource "azurerm_resource_group" "rg-southwest" {
#   location = var.location
#   # name     =  var.eis_preprod_int_southwest_rg_name
#   name = var.resource_group_name
# }