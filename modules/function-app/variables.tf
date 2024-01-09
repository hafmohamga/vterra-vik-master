
####################  Global Variables ########################


variable "resource_group_name" {
    default = ""
    type =  string 
    description = "Please specify the resource group name " 

}

variable "function_strg_app_name" {
    default = ""
    type =  string 
    description = "Please specify the storage account name" 

}

######################### Function App Variable #########################

variable "function_app_plan_name" {
    default = ""
    type =  string 
    description = "Please specify the function app plan name" 

}
variable "function_app_name" {
    default = ""
    type =  string 
    description = "Please specify the function app name" 
}

variable "function_application_insights_name" {
  default     = ""
  type        = string
  description = "Please specify the function app name"

}