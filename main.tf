# Reference Azure root tenant ID
data "azurerm_client_config" "core" {}

# Declare ALZ terraform module directly from TF registry
module "enterprise_scale" {
  source = "Azure/caf-enterprise-scale/azurerm"
  version = "5.2.1"
  default_location = "eastus"
  
  providers = {
    azurerm                 = azurerm
    azurerm.connectivity    = azurerm.connectivity
    azurerm.management      = azurerm.management
  }

  root_parent_id = data.azurerm_client_config.core.tenant_id # Root tenant ID
  root_id = var.root_id # Var for root MG under def root
  root_name = var.root_name # Var for root MG under def root

  deploy_connectivity_resources = var.deploy_connectivity_resources # Deploy Connectivity
  subscription_id_connectivity = var.subscription_id_connectivity
  configure_connectivity_resources = local.configure_connectivity_resources # Ref settings file for connectivity

  deploy_management_resources = var.deploy_management_resources # Deploy Management
  subscription_id_management = var.subscription_id_management
  configure_management_resources = local.configure_management_resources # Ref settings file for management

  deploy_identity_resources = var.deploy_identity_resources # Deploy Identity
  subscription_id_identity = var.subscription_id_identity
  configure_identity_resources = local.configure_identity_resources # Ref settings file for identity

  deploy_demo_landing_zones = true # Deploy demo landing zones
}


