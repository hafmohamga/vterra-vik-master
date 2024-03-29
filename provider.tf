# terraform {
#   required_providers {
#     azurerm = {
#       source  = "hashicorp/azurerm"
#       version = "~>3.0"
#     }
#     random = {
#       source  = "hashicorp/random"
#       version = "~>3.0"
#     }
#   }
# }
# provider "azurerm" {
#     features {}
# }

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.85.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-terraform-backend-state"
    storage_account_name = "4terraform"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }

}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  # skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {
    #              resource_group {
    # │                 prevent_deletion_if_contains_resources = true
    # │            }
  }
}