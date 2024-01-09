data "azurerm_resource_group" "globalvterrarg" {
  name = var.resource_group_name
}

data "azurerm_storage_account" "strglogic" {
  name                = var.logic_strg_app_name
  resource_group_name = data.azurerm_resource_group.globalvterrarg.name
}



resource "azurerm_logic_app_workflow" "main" {
  name                = var.logic_app_name_workflow
  location            = data.azurerm_resource_group.globalvterrarg.location
  resource_group_name = data.azurerm_resource_group.globalvterrarg.name
  # depends_on = [azurerm_resource_group.rg] 
}


# resource "azurerm_storage_account" "storageAccount" {
#   name                     = var.storage_account_name
#   resource_group_name      = var.resource_group_name
#   location                 = var.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   depends_on = [azurerm_resource_group.rg]
# }

resource "azurerm_app_service_plan" "service_plan" {
  name                = var.logic_app_name_standard
  location            = data.azurerm_resource_group.globalvterrarg.location
  resource_group_name = data.azurerm_resource_group.globalvterrarg.name
  kind                = "elastic"
  //depends_on = [azurerm_resource_group.rg]
  
  sku {
    tier = "WorkflowStandard"
    size = "WS1"
  }
}

resource "azurerm_logic_app_standard" "standard" {
  name                       = var.logic_app_name_standard
  location            = data.azurerm_resource_group.globalvterrarg.location
  resource_group_name = data.azurerm_resource_group.globalvterrarg.name
  app_service_plan_id        = azurerm_app_service_plan.service_plan.id
  storage_account_name       = data.azurerm_storage_account.strglogic.name
  storage_account_access_key = data.azurerm_storage_account.strglogic.primary_access_key
  //depends_on = [azurerm_resource_group.rg]
 

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME"     = "node"
    "WEBSITE_NODE_DEFAULT_VERSION" = "~18"
  }
}