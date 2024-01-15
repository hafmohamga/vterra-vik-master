# ############# Define Variables #################################

# ####################  Global Variables ########################

variable "VRMConsumer" {
  default     = ""
  description = "Please enter the VRMConsumer"
  type        = string
}

variable "VRMMaintainer" {
  default     = ""
  description = "Please enter the VRMMaintainer"
  type        = string
}

variable "project" {
  default     = ""
  description = "Please enter the VRMMaintainer"
  type        = string
}

variable "environment" {
  type        = string
  description = "Please specify the environment"
  default     = ""
}

variable "location" {
  default     = ""
  type        = string
  description = "Please specify the location"
}

variable "resource_group_name" {
  default     = ""
  type        = string
  description = "Please specify the resource group name "
}

variable "eis_preprod_int_east_rg_name" {
  default     = ""
  type        = string
  description = "Please specify the resource group name "
}

variable "eis_preprod_int_southwest_rg_name" {
  default     = ""
  type        = string
  description = "Please specify the resource group name "
}

variable "storage_account_name" {
  default     = ""
  type        = string
  description = "Please specify the storage account name"
}

variable "function_strg_app_name" {
  default     = ""
  type        = string
  description = "Please specify the storage account name"
}

# variable "storage_account_name1" {
#   default     = ""
#   type        = string
#   description = "Please specify the storage account name"

# }



# ######################### Function App Variable #########################

variable "function_app_plan_name" {
  default     = ""
  type        = string
  description = "Please specify the function app plan name"

}
variable "function_app_name" {
  default     = ""
  type        = string
  description = "Please specify the function app name"
}

variable "function_application_insights_name" {
  default     = ""
  type        = string
  description = "Please specify the function app name"
}

# ##########################  App Service Variables #########################

variable "asp_kind" {
  description = "Kind of the Application Service Plans"
}

variable "asp_sku_tier" {
  description = "SKU Tier of the Application Service Plans"
}

variable "asp_sku_size" {
  description = "SKU Size of the Application Service Plans"
}

variable "app_service_plan_name" {
  default     = ""
  description = "Please specify the app service plan name"
  type        = string
}

variable "app_service_win_app_name" {
  default     = ""
  description = "Please specify the app service app name"
  type        = string
}

variable "eis-preprod-int-east-asp1-asp_name" {
  default     = ""
  description = "Please specify the EIS-PREPROD-INT-EAST-ASP1 app service plan name"
  type        = string
}


variable "eis-preprod-int-east-asp1-app_service_win_app_name" {
  default     = ""
  description = "Please specify the app service app name"
  type        = string
}

variable "eis-preprod-int-southwest-asp1-asp_name" {
  default     = ""
  description = "Please specify the EIS-PREPROD-INT-SOUTHWEST-ASP1 app service plan name"
  type        = string
}

variable "eis-preprod-int-southwest-asp1-app_service_win_app_name" {
  default     = ""
  description = "Please specify the eis-preprod-int-southwest-asp1 app service app name"
  type        = string
}


variable "eis-preprod-int-east-asp2-asp_name" {
  default     = ""
  description = "Please specify the EIS-PREPROD-INT-EAST-ASP2 app service plan name"
  type        = string
}

variable "eis-preprod-int-east-asp2-app_service_win_app_name" {
  default     = ""
  description = "Please specify the eis-preprod-int-east-asp2 app service app name"
  type        = string
}


variable "eis-preprod-int-southwest-asp2-asp_name" {
  default     = ""
  description = "Please specify the EIS-PREPROD-INT-SOUTHWEST-ASP2 app service plan name"
  type        = string
}

variable "eis-preprod-int-southwest-asp2-app_service_win_app_name" {
  default     = ""
  description = "Please specify the eis-preprod-int-southwest-asp2 app service app name"
  type        = string
}

variable "eis-preprod-int-east-asp3-asp_name" {
  default     = ""
  description = "Please specify the EIS-PREPROD-INT-EAST-ASP3 app service plan name"
  type        = string
}

variable "eis-preprod-int-east-asp3-app_service_win_app_name" {
  default     = ""
  description = "Please specify the eis-preprod-int-east-asp3 app service app name"
  type        = string
}

variable "eis-preprod-int-southwest-asp3-asp_name" {
  default     = ""
  description = "Please specify the EIS-PREPROD-INT-SOUTHWEST-ASP3 app service plan name"
  type        = string
}

variable "eis-preprod-int-southwest-asp3-app_service_win_app_name" {
  default     = ""
  description = "Please specify the eis-preprod-int-southwest-asp3 app service app name"
  type        = string
}

# ##########################  Logic app  #########################

variable "logic_app_name_workflow" {
  default     = ""
  description = "This is my logic app name"
  type        = string

}


variable "logic_strg_app_name" {
  default     = ""
  description = "This is my logic app name"
  type        = string
}

variable "logic_storage_account_name" {
  default     = ""
  description = "This is my logic app name"
  type        = string
}

variable "logic_app_name_standard" {
  default     = ""
  description = "This is my logic app name"
  type        = string
}

