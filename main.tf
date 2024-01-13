# # provider "azurerm" {
# #     features {}
# # }

# ########## Modules ################

module "resource-group" {
  source              = "./modules/resource-group"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "storage-account" {
  source               = "./modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
}



module "app-service" {
  source                   = "./modules/app-service"
  environment              = var.environment
  VRMMaintainer                    = var.VRMMaintainer
  project                  = var.project
  resource_group_name      = var.resource_group_name
  app_service_plan_name    = var.app_service_plan_name
  app_service_win_app_name = var.app_service_win_app_name
}

# module "logic-app" {
#   # depends_on              = [module.app-service]
#   source                  = "./modules/logic-app"
#   logic_app_name_workflow = var.logic_app_name_workflow
#   logic_app_name_standard = var.logic_app_name_standard
#   resource_group_name     = var.resource_group_name
#   logic_strg_app_name     = var.logic_strg_app_name
# }

# module "logic-storage-account" {
#   source               = "./modules/storage-account"
#   storage_account_name = var.logic_storage_account_name
#   resource_group_name  = var.resource_group_name
# }

# module "function-app" {
#   source                             = "./modules/function-app"
#   resource_group_name                = var.resource_group_name
#   function_strg_app_name             = var.function_strg_app_name
#   function_app_plan_name             = var.function_app_plan_name
#   function_app_name                  = var.function_app_name
#   function_application_insights_name = var.function_application_insights_name
# }

# # resource "azurerm_storage_account" "importstorageacct" {
# #   name                             = "strgacctvterra0001"
# #   resource_group_name              = "rg-secondary-vterra"
# #   location                         = "eastus"
# #   account_tier                     = "Standard"
# #   account_replication_type         = "LRS"
# #   allow_nested_items_to_be_public  = false
# #   cross_tenant_replication_enabled = false
# # }