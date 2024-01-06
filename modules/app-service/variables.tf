####################  Global Variables ########################

variable "project" {
  default = ""
  description = "Please enter the Project name"
  type = string
}


variable "owner" {
  default = ""
  description = "Please enter the owner"
  type = string
}

variable "environment" {
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


##################### App Service #####################

variable "app_name" {
  type        = string
  default = ""
  description = "This variable defines the application name used to build resources.  It must be unique on Azure."
}

variable "app_port" {
  type        = string
  description = "Port used by the web app"
  default     = "8080"
}

variable "docker_image" {
  default = ""
  type        = string
  description = "Docker image name to deploy in the app service"
}

variable "docker_image_tag" {
  type        = string
  description = "Docker image tag to deploy"
  default     = "latest"
}

variable "description" {
  default = ""
  type        = string
  description = "Provide a description of the resource"
}
