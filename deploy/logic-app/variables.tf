############### Global Variables ##############

variable "Project" {
  type = string
  description = "Please specify Project Name"
  default = ""

}

variable "environment" {
  type = string
  description = "Please specify the environment"
  default = ""

}

variable "VRMMaintainer" {
  type = string
  description = "Please specify the environment"
  default = ""

}

variable "location" {
    default = "West Europe"
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

##########################  Logic app  #########################

variable "logic_app_enabled" {
  type    = bool
  default = true

}

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