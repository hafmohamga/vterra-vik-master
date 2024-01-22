
variable "resource_group_name" {
  default     = ""
  type        = string
  description = "Name of the resource group"

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

variable "logic_strg_app_name" {
  default     = ""
  description = "This is my logic storage name"
  type        = string
}


variable "logic_storage_account_name" {
  description = "This is my logic storage name"
  type        = string
}



