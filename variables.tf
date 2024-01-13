# ############# Define Variables #################################

# ####################  Global Variables ########################

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

