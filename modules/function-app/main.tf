
# resource "azurerm_resource_group" "rg" {
#   location = var.location
#   name     = var.resource_group_name
# }

data "azurerm_resource_group" "eis-migration-rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "strgfunc" {
  name                = var.function_strg_app_name
  resource_group_name = data.azurerm_resource_group.eis-migration-rg.name
}

# resource "azurerm_storage_account" "strgacct" {
#   name                     = var.storage_account_name
#   # name                     = "strgacct4vterrafuncapp"
#   resource_group_name      = data.azurerm_resource_group.eis-migration-rg.name
#   location                 = data.azurerm_resource_group.eis-migration-rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   # depends_on = [azurerm_resource_group.rg]
# }


resource "azurerm_service_plan" "service_plan" {
  name                = var.function_app_plan_name
  resource_group_name      = data.azurerm_resource_group.eis-migration-rg.name
  location                 = data.azurerm_resource_group.eis-migration-rg.location
  os_type             = "Windows"
  sku_name            = "S1"
  worker_count        = "1"
  # depends_on = [azurerm_resource_group.rg]
}


resource "azurerm_windows_function_app" "example" {
  name                = var.function_app_name
  resource_group_name      = data.azurerm_resource_group.eis-migration-rg.name
  location                 = data.azurerm_resource_group.eis-migration-rg.location

  storage_account_name       = data.azurerm_storage_account.strgfunc.name
  storage_account_access_key = data.azurerm_storage_account.strgfunc.primary_access_key
  service_plan_id            = azurerm_service_plan.service_plan.id
  # depends_on = [azurerm_resource_group.rg]
  site_config {}
}

resource "azurerm_application_insights" "example" {
  name                = var.function_application_insights_name
  resource_group_name      = data.azurerm_resource_group.eis-migration-rg.name
  location                 = data.azurerm_resource_group.eis-migration-rg.location
  application_type    = "web"
  # depends_on = [azurerm_resource_group.rg]
}