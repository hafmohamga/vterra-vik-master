
resource "azurerm_resource_group" "rg" {
  name     = "rg_vterra_appserv"
  location = var.location
}

# Create app service plan
resource "azurerm_service_plan" "service_plan" {
  name                = "${var.app_name}-AppService-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Windows"
  sku_name            = "P1v2"

  tags = {
    project    = var.project
    owner       = var.owner
    environment = var.environment
  }
}

# Create app service
resource "azurerm_windows_web_app" "example" {
  name                = "${var.app_name}"
  resource_group_name = var.resource_group_name
  location            = var.location
  service_plan_id     = azurerm_service_plan.service_plan.id
  tags = {
    owner       = var.owner
    environment = var.environment
  }

  site_config {}
}