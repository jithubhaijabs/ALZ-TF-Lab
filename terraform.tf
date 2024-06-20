# AzureRM terraform provider
terraform {
    required_providers {
        azurerm = {
        source = "hashicorp/azurerm"
        version = ">= 3.74.0"
        configuration_aliases = [ 
            azurerm.management,
            azurerm.connectivity
        ]
        }
    }
}

provider "azurerm" {
    features {}
}

# Provider for Management subscriptions
provider "azurerm" {
    alias = "management"
    features {}
    subscription_id = var.subscription_id_management
}

# Provider for Connectivity subscriptions
provider "azurerm" {
    alias = "connectivity"
    features {}
    subscription_id = var.subscription_id_management
}