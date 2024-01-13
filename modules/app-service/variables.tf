####################  Global Variables ########################

variable "project" {
  default = ""
  description = "Please enter the Project name"
  type = string
}

variable "VRMConsumer" {
  default = ""
  description = "Please enter the VRMConsumer"
  type = string
}

variable "VRMMaintainer" {
  default = ""
  description = "Please enter the VRMMaintainer"
  type = string
}

variable "environment" {
  type = string
  description = "Please specify the environment"
  default = ""

}



variable "resource_group_name" {
    default = ""
    type =  string 
    description = "Please specify the resource group name " 

}



##################### App Service #####################

variable "app_service_plan_name" {
  type        = string
  default = ""
  description = "This variable defines the application name used to build resources.  It must be unique on Azure."
}

variable "app_service_win_app_name" {
  type        = string
  default = ""
  description = "This variable defines the application name used to build resources.  It must be unique on Azure."
}


