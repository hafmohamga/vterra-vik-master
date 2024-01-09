data "azurerm_resource_group" "globalvterrarg" {
  name = var.resource_group_name
}



resource "azurerm_storage_account" "strgacct" {
  name                     = var.storage_account_name
  # name                     = "strgacct4vterrafuncapp"
  resource_group_name      = data.azurerm_resource_group.globalvterrarg.name
  location                 = data.azurerm_resource_group.globalvterrarg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
#   depends_on = [data.azurerm_resource_group.globalvterrarg]
}