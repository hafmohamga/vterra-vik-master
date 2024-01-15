data "azurerm_resource_group" "eis-migration-rg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "eisstrgacclogicapp" {
  name                = var.logic_storage_account_name
  resource_group_name = data.azurerm_resource_group.eis-migration-rg.name
}

resource "azurerm_logic_app_workflow" "main" {
  name                = var.logic_app_name_workflow
  location            = data.azurerm_resource_group.eis-migration-rg.location
  resource_group_name = data.azurerm_resource_group.eis-migration-rg.name
  # depends_on = [azurerm_resource_group.rg] 
}


resource "azurerm_storage_account" "storageAccount" {
  name                     = var.logic_storage_account_name    # var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = data.azurerm_resource_group.eis-migration-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  # depends_on = [azurerm_resource_group.rg]
}

resource "azurerm_app_service_plan" "service_plan" {
  name                = var.logic_app_name_standard
  location            = data.azurerm_resource_group.eis-migration-rg.location
  resource_group_name = data.azurerm_resource_group.eis-migration-rg.name
  kind                = "elastic"
  //depends_on = [azurerm_resource_group.rg]
  
  sku {
    tier = "WorkflowStandard"
    size = "WS1"
  }
}

resource "azurerm_logic_app_standard" "standard" {
  name                       = var.logic_app_name_standard
  location            = data.azurerm_resource_group.eis-migration-rg.location
  resource_group_name = data.azurerm_resource_group.eis-migration-rg.name
  app_service_plan_id        = azurerm_app_service_plan.service_plan.id
  storage_account_name       = data.azurerm_storage_account.eisstrgacclogicapp.name
  storage_account_access_key = data.azurerm_storage_account.eisstrgacclogicapp.primary_access_key
  //depends_on = [azurerm_resource_group.rg]
 

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
}