
####################  Global Variables ########################

variable "location" {
    default = "East US"
    type = string
    description = "Please specify the location"
  
}

variable "resource_group_name" {
    default = ""
    type =  string 
    description = "Please specify the resource group name " 

}

variable "storage_account_name" {
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

variable "azurerm_application_insights_name" {
  default     = "appinsights4logs"
  type        = string
  description = "Please specify the function app name"

}