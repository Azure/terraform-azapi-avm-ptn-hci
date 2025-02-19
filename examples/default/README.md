<!-- BEGIN_TF_DOCS -->
# Default example

This deploys the module in its simplest form.

```hcl
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
```

<!-- markdownlint-disable MD033 -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.9, < 2.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 4.0)

## Resources

The following resources are used by this module:

- [azurerm_resource_group.rg](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/resource_group) (data source)

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_deployment_user_password"></a> [deployment\_user\_password](#input\_deployment\_user\_password)

Description: The password for deployment user.

Type: `string`

### <a name="input_local_admin_password"></a> [local\_admin\_password](#input\_local\_admin\_password)

Description: The password for the local administrator account.

Type: `string`

### <a name="input_local_admin_user"></a> [local\_admin\_user](#input\_local\_admin\_user)

Description: The username for the local administrator account.

Type: `string`

### <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name)

Description: The resource group where the resources will be deployed.

Type: `string`

### <a name="input_service_principal_id"></a> [service\_principal\_id](#input\_service\_principal\_id)

Description: The service principal ID for ARB.

Type: `string`

### <a name="input_service_principal_secret"></a> [service\_principal\_secret](#input\_service\_principal\_secret)

Description: The service principal secret.

Type: `string`

### <a name="input_site_id"></a> [site\_id](#input\_site\_id)

Description: A unique identifier for the site.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_adou_suffix"></a> [adou\_suffix](#input\_adou\_suffix)

Description: The suffix of Active Directory OU path.

Type: `string`

Default: `"DC=jumpstart,DC=local"`

### <a name="input_deployment_user"></a> [deployment\_user](#input\_deployment\_user)

Description: The username for deployment user.

Type: `string`

Default: `"avmdeploy"`

### <a name="input_enable_telemetry"></a> [enable\_telemetry](#input\_enable\_telemetry)

Description: This variable controls whether or not telemetry is enabled for the module.  
For more information see <https://aka.ms/avm/telemetryinfo>.  
If it is set to false, then no telemetry will be collected.

Type: `bool`

Default: `true`

### <a name="input_rp_service_principal_object_id"></a> [rp\_service\_principal\_object\_id](#input\_rp\_service\_principal\_object\_id)

Description: The object ID of the HCI resource provider service principal.

Type: `string`

Default: `""`

### <a name="input_subnet_mask"></a> [subnet\_mask](#input\_subnet\_mask)

Description: The subnet mask for the network.

Type: `string`

Default: `"255.255.255.0"`

## Outputs

No outputs.

## Modules

The following Modules are called:

### <a name="module_test"></a> [test](#module\_test)

Source: ../../

Version:

<!-- markdownlint-disable-next-line MD041 -->
## Data Collection

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the repository. There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft’s privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkID=824704>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.
<!-- END_TF_DOCS -->