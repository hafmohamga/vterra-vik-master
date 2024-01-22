# ########## Modules ################

module "resource-group" {
  source              = "./modules/resource-group"
  location            = var.location
  resource_group_name = var.resource_group_name
}

module "eis_preprod_int_east_rg_name" {
  source              = "./modules/resource-group"
  location            = var.location
  resource_group_name = var.eis_preprod_int_east_rg_name
  #  name     =  var.eis_preprod_int_east_rg_name
  # resource_group_name = var.resource_group_name
}

module "eis_preprod_int_southwest_rg_name" {
  source              = "./modules/resource-group"
  location            = var.location
  resource_group_name = var.eis_preprod_int_southwest_rg_name
  #  name     =  var.eis_preprod_int_southwest_rg_name
  # resource_group_name = var.resource_group_name
}

module "storage-account" {
  source               = "./modules/storage-account"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
}

module "eis-preprod-int-east-asp1" {
  source                   = "./modules/app-service"
  environment              = var.environment
  VRMConsumer              = var.VRMConsumer
  VRMMaintainer            = var.VRMMaintainer
  project                  = var.project
  resource_group_name      = var.resource_group_name # var.eis_preprod_int_east_rg_name
  app_service_plan_name    = var.eis-preprod-int-east-asp1-asp_name
  # app_service_win_app_name = var.eis-preprod-int-east-asp1-app_service_win_app_name
}


module "eis-preprod-int-southwest-asp1" {
  source                   = "./modules/app-service"
  environment              = var.environment
  VRMConsumer              = var.VRMConsumer
  VRMMaintainer            = var.VRMMaintainer
  project                  = var.project
  resource_group_name      = var.resource_group_name # var.eis_preprod_int_southwest_rg_name
  app_service_plan_name    = var.eis-preprod-int-southwest-asp1-asp_name
  # app_service_win_app_name = var.eis-preprod-int-southwest-asp1-app_service_win_app_name
}

# module "eis-preprod-int-east-asp2" {
#   source                   = "./modules/app-service"
#   environment              = var.environment
#   VRMConsumer              = var.VRMConsumer
#   VRMMaintainer            = var.VRMMaintainer
#   project                  = var.project
#   resource_group_name      = var.resource_group_name # var.eis_preprod_int_east_rg_name
#   app_service_plan_name    = var.eis-preprod-int-east-asp2-asp_name
#   app_service_win_app_name = var.eis-preprod-int-east-asp2-app_service_win_app_name
# }

# module "eis-preprod-int-southwest-asp2" {
#   source                   = "./modules/app-service"
#   environment              = var.environment
#   VRMConsumer              = var.VRMConsumer
#   VRMMaintainer            = var.VRMMaintainer
#   project                  = var.project
#   resource_group_name      = var.resource_group_name # var.eis_preprod_int_southwest_rg_name
#   app_service_plan_name    = var.eis-preprod-int-southwest-asp2-asp_name
#   app_service_win_app_name = var.eis-preprod-int-southwest-asp2-app_service_win_app_name
# }

# module "eis-preprod-int-east-asp3" {
#   source                   = "./modules/app-service"
#   environment              = var.environment
#   VRMConsumer              = var.VRMConsumer
#   VRMMaintainer            = var.VRMMaintainer
#   project                  = var.project
#   resource_group_name      = var.resource_group_name # var.eis_preprod_int_east_rg_name
#   app_service_plan_name    = var.eis-preprod-int-east-asp3-asp_name
#   app_service_win_app_name = var.eis-preprod-int-east-asp3-app_service_win_app_name
# }

# module "eis-preprod-int-southwest-asp3" {
#   source                   = "./modules/app-service"
#   environment              = var.environment
#   VRMConsumer              = var.VRMConsumer
#   VRMMaintainer            = var.VRMMaintainer
#   project                  = var.project
#   resource_group_name      = var.resource_group_name # var.eis_preprod_int_southwest_rg_name
#   app_service_plan_name    = var.eis-preprod-int-southwest-asp3-asp_name
#   app_service_win_app_name = var.eis-preprod-int-southwest-asp3-app_service_win_app_name
# }

module "logic-app" {
  # depends_on              = [module.app-service]
  source                  = "./modules/logic-app"
  logic_app_name_workflow = var.logic_app_name_workflow
  logic_app_name_standard = var.logic_app_name_standard
  resource_group_name     = var.resource_group_name
  logic_storage_account_name     = var.logic_strg_app_name
}

module "logic-storage-account" {
  source               = "./modules/storage-account"
  storage_account_name = var.logic_storage_account_name
  resource_group_name  = var.resource_group_name
}

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

# module "west_network" {
#   source         = "./modules/network"
#   rg_name        = "EIS-${var.environment}TEST-INT-SOUTHWEST-VEIS-RG"
#   location       = "eastus"
#   vnet_name      = "vnet-westus-${var.environment}"
#   public_ip_name = "ip-westus-${var.environment}"
#   # domain_name    = "ipwestus$lower({var.environment})"
#   domain_name    = "ipwestuspreprod"
# }

# module "east_network" {
#   source         = "./modules/network"
#   rg_name        = "EIS-${var.environment}TEST-INT-SOUTHWEST-VEIS-RG"
#   location       = "East US"
#   vnet_name      = "vnet-eastus-${var.environment}"
#   public_ip_name = "ip-eastus-${var.environment}"
#   # domain_name    = "ipeastus$lower({var.environment})"
#   domain_name    = "ipeastuspreprod"
# }

# module "west_app_gateway" {
#   source           = "./modules/app_gateway"
#   name             = "app-gateway-westus-${var.environment}"
#   rg_name          = "EIS-${var.environment}TEST-INT-SOUTHWEST-VEIS-RG"
#   location         = "eastus"
#   vnet_subnet_id   = module.west_network.subnet_id
#   public_ip_id     = module.west_network.public_ip_id
#   app_service_fqdn = module.west_webapp.webapp_name
# }

# module "east_app_gateway" {
#   source           = "./modules/app_gateway"
#   name             = "app-gateway-eastus-${var.environment}"
#   rg_name          = "EIS-${var.environment}TEST-INT-SOUTHWEST-VEIS-RG"
#   location         = "East US"
#   vnet_subnet_id   = module.east_network.subnet_id
#   public_ip_id     = module.east_network.public_ip_id
#   app_service_fqdn = module.east_webapp.webapp_name
# }

# module "traffic_manager" {
#   source                       = "./modules/traffic_manager"
#   name                         = "traffic-profile1937-${var.environment}"
#   location                     = "Central US"
#   rg_name                      = "traffic_manager_rg-${var.environment}"
#   profile_name                 = "traffic-profile1937-${var.environment}"
#   ttl                          = 100
#   monitor_protocol             = "HTTPS"
#   monitor_port                 = 443
#   monitor_path                 = "/"
#   monitor_interval             = 30
#   monitor_timeout              = 10
#   monitor_failures             = 2
#   primary_target_resource_id   = module.east_network.public_ip_id
#   secondary_target_resource_id = module.west_network.public_ip_id
# }