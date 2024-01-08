
variable "resource_group_name" {
  default     = ""
  type        = string
  description = "Name of the resource group"

}
variable "storage_account_name" {
  default     = ""
  description = "Enter the name of the storage acccount"
  type        = string

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

variable "location" {
  type        = string
  default     = ""
  description = "This is location for resources "
}
variable "parameters" {
  description = "The parameters passed to the workflow"
  default     = {}

}

variable "workflow_schema" {
  type        = string
  default     = null
  description = "Specifies the Schema to use for this Logic App Workflow. Defaults to https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#."
}

variable "parameter" {
  type        = map(any)
  default     = null
  description = "A map of Key-Value pairs."
}

