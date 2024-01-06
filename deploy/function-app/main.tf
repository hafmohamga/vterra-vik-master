module "function-app" {
  source                            = "./../../modules/function-app"
  resource_group_name               = var.resource_group_name
  storage_account_name              = var.storage_account_name
  function_app_plan_name            = local.function_app_plan_name
  function_app_name                 = local.function_app_name
  azurerm_application_insights_name = local.azurerm_application_insights_name
}