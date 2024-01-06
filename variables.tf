############# Define Variables #################################

####################  Global Variables ########################

variable "owner" {
  default     = ""
  description = "Please enter the owner"
  type        = string
}


variable "location" {
  default     = "West US"
  type        = string
  description = "Please specify the location"

}

variable "rg_shared_name" {
  type        = string
  default     = "rg-vterra-vik-master"
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

variable "environment" {
  type        = string
  description = "Please specify the environment"
  default     = ""

}

######################### Function App Variable #########################

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

##########################  App Service Variables #########################

variable "app_service_name" {
  default     = ""
  description = "Please specify the function app service name"
  type        = string

}

variable "app_service_port" {
  default     = ""
  description = "Please specify the function app service port"
  type        = string
}


variable "app_service_image" {
  type        = string
  description = "Please specify the function app service image"
  default     = ""
}

variable "app_service_image_tag" {
  type        = string
  description = "Please specify the function app service image tag"
  default     = ""
}

##########################  Logic app  #########################

variable "logic_app_name_workflow" {
  default     = ""
  description = "This is my logic app name"
  type        = string

}

variable "logic_app_name_standard" {
  default     = ""
  description = "This is my logic app name"
  type        = string

}