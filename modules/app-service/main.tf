
data "azurerm_resource_group" "eis-dev-rg" {
  name = var.resource_group_name
}

# Create app service plan
resource "azurerm_service_plan" "service_plan" {
  name                = var.app_service_plan_name  # "${var.app_name}-AppService-plan"
  resource_group_name      = data.azurerm_resource_group.eis-dev-rg.name
  location                 = data.azurerm_resource_group.eis-dev-rg.location
  os_type             = "Windows"
  sku_name            = "P1v2"
  # depends_on = [azurerm_resource_group.rg]
  tags = {
    project    = var.project
    VRMMaintainer       = var.VRMMaintainer
    environment = var.environment
  }
}

# Create app service
resource "azurerm_windows_web_app" "example" {
  name                = var.app_service_win_app_name     # "${var.app_name}"
  resource_group_name      = data.azurerm_resource_group.eis-dev-rg.name
  location                 = data.azurerm_resource_group.eis-dev-rg.location
  service_plan_id     = azurerm_service_plan.service_plan.id
  tags = {
    VRMMaintainer       = var.VRMMaintainer
    environment = var.environment
  }
  # depends_on = [azurerm_resource_group.rg]
  site_config {}
}