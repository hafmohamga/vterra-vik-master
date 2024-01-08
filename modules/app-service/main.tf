
# resource "azurerm_resource_group" "rg" {
#   name     = "rg_vterra_appserv"
#   location = var.location
# }

resource "azurerm_resource_group" "rg" {
  location = var.location
  name     = var.resource_group_name
}

# Create app service plan
resource "azurerm_service_plan" "service_plan" {
  name                = "${var.app_name}-AppService-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  os_type             = "Windows"
  sku_name            = "P1v2"
  depends_on = [azurerm_resource_group.rg]
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
  depends_on = [azurerm_resource_group.rg]
  site_config {}
}