locals {
  function_app_name= "${var.Project}-${var.environment}-App"
  function_app_plan_name= "${var.Project}-${var.environment}-AppPlan"
  azurerm_application_insights_name = "${var.Project}-${var.environment}-insights"
}