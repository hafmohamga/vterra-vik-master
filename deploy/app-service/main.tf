module "app-service" {
  source      = "./../../modules/app-service"
  app_name    = local.app-service-name
  resource_group_name = var.resource_group_name
  location    = var.location
  environment = var.environment
  VRMMaintainer       = var.VRMMaintainer
  description = "windows app"

}