module "logic-app" {
  source                  = "./../../modules/logic-apps"
  logic_app_name_workflow = local.logic_app_name_workflow
  logic_app_name_standard = local.logic_app_name_standard
  storage_account_name = var.storage_account_name
  location                = var.location
  resource_group_name     = var.resource_group_name

}