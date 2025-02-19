terraform {
  required_version = ">= 1.9, < 2.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
}

provider "azurerm" {
  subscription_id = "0000000-0000-00000-000000"
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}

data "azurerm_resource_group" "rg" {
  name = var.resource_group_name
}

# This is the module call
# Do not specify location here due to the randomization above.
# Leaving location as `null` will cause the module to use the resource group location
# with a data source.
module "test" {
  source = "../../"
  # source             = "Azure/avm-res-azurestackhci-cluster/azurerm"
  # version = "~> 0.1.0"

  location                = data.azurerm_resource_group.rg.location
  name                    = local.name
  resource_group_id       = data.azurerm_resource_group.rg.id
  resource_group_location = data.azurerm_resource_group.rg.location

  enable_telemetry = var.enable_telemetry # see variables.tf

  site_id          = var.site_id
  domain_fqdn      = "jumpstart.local"
  starting_address = "192.168.1.55"
  ending_address   = "192.168.1.65"
  subnet_mask      = var.subnet_mask
  default_gateway  = "192.168.1.1"
  dns_servers      = ["192.168.1.254"]
  adou_path        = local.adou_path
  servers = [
    {
      name        = "AzSHOST1",
      ipv4Address = "192.168.1.12"
    },
    {
      name        = "AzSHOST2",
      ipv4Address = "192.168.1.13"
    }
  ]
  management_adapters = ["FABRIC", "FABRIC2"]
  storage_networks = [
    {
      name               = "Storage1Network",
      networkAdapterName = "StorageA",
      vlanId             = "711"
    },
    {
      name               = "Storage2Network",
      networkAdapterName = "StorageB",
      vlanId             = "712"
    }
  ]
  storage_connectivity_switchless = false
  custom_location_name            = local.custom_location_name
  witness_storage_account_name    = local.witness_storage_account_name
  keyvault_name                   = local.keyvault_name
  random_suffix                   = true
  deployment_user                 = var.deployment_user
  deployment_user_password        = var.deployment_user_password
  local_admin_user                = var.local_admin_user
  local_admin_password            = var.local_admin_password
  service_principal_id            = var.service_principal_id
  service_principal_secret        = var.service_principal_secret
  rp_service_principal_object_id  = var.rp_service_principal_object_id
}
