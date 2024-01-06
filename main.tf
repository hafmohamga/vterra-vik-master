# provider "azurerm" {
#     features {}
# }

########## Modules ################

module "function-app" {
  source                 = "./modules/function-app"
  resource_group_name    = var.resource_group_name
  storage_account_name   = var.storage_account_name
  location               = var.location
  function_app_plan_name = var.function_app_plan_name
  function_app_name      = var.function_app_name
}

module "app-service" {
  source           = "./modules/app-service"
  location         = var.location
  environment      = var.environment
  owner            = var.owner
  description      = "Linux Docker container app"
  app_name         = var.app_service_name
  app_port         = var.app_service_port
  docker_image     = var.app_service_image
  docker_image_tag = var.app_service_image_tag
}

module "logic-app" {
  depends_on              = [module.app-service]
  source                  = "./modules/logic-apps"
  logic_app_name_workflow = var.logic_app_name_workflow
  logic_app_name_standard = var.logic_app_name_standard
  location                = var.location
  resource_group_name     = var.resource_group_name

}