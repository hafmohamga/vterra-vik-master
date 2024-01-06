resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_service_plan" "service_plan" {
  name                = var.function_app_plan_name
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Windows"
  sku_name            = "S1"
  worker_count        = "1"
}


resource "azurerm_windows_function_app" "example" {
  name                = var.function_app_name
  resource_group_name = var.resource_group_name
  location            = var.location

  storage_account_name       = azurerm_storage_account.example.name
  storage_account_access_key = azurerm_storage_account.example.primary_access_key
  service_plan_id            = azurerm_service_plan.service_plan.id

  site_config {}
}

resource "azurerm_application_insights" "example" {
  name                = var.azurerm_application_insights_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = "web"
}