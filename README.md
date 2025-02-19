<!-- BEGIN_TF_DOCS -->
# terraform-azurerm-avm-res-azurestackhci-cluster

Module to provision azure stack hci.

<!-- markdownlint-disable MD033 -->
## Requirements

The following requirements are needed by this module:

- <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) (>= 1.9, < 2.0)

- <a name="requirement_azapi"></a> [azapi](#requirement\_azapi) (~> 2.0)

- <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) (~> 2.50.0)

- <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) (~> 4.0)

- <a name="requirement_modtm"></a> [modtm](#requirement\_modtm) (~> 0.3)

- <a name="requirement_random"></a> [random](#requirement\_random) (~> 3.5)

## Resources

The following resources are used by this module:

- [azapi_resource.cluster](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource) (resource)
- [azapi_resource.validatedeploymentsetting](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/resource) (resource)
- [azapi_update_resource.deploymentsetting](https://registry.terraform.io/providers/azure/azapi/latest/docs/resources/update_resource) (resource)
- [azurerm_key_vault.deployment_keyvault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault) (resource)
- [azurerm_key_vault_secret.azure_stack_lcm_user_credential](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) (resource)
- [azurerm_key_vault_secret.default_arb_application](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) (resource)
- [azurerm_key_vault_secret.local_admin_credential](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) (resource)
- [azurerm_key_vault_secret.witness_storage_key](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/key_vault_secret) (resource)
- [azurerm_management_lock.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock) (resource)
- [azurerm_role_assignment.machine_role_assign](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)
- [azurerm_role_assignment.service_principal_role_assign](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)
- [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) (resource)
- [azurerm_storage_account.witness](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/storage_account) (resource)
- [modtm_telemetry.telemetry](https://registry.terraform.io/providers/azure/modtm/latest/docs/resources/telemetry) (resource)
- [random_integer.random_suffix](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/integer) (resource)
- [random_uuid.telemetry](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/uuid) (resource)
- [azapi_resource.arc_settings](https://registry.terraform.io/providers/azure/azapi/latest/docs/data-sources/resource) (data source)
- [azapi_resource.arcbridge](https://registry.terraform.io/providers/azure/azapi/latest/docs/data-sources/resource) (data source)
- [azapi_resource.customlocation](https://registry.terraform.io/providers/azure/azapi/latest/docs/data-sources/resource) (data source)
- [azapi_resource_list.user_storages](https://registry.terraform.io/providers/azure/azapi/latest/docs/data-sources/resource_list) (data source)
- [azuread_service_principal.hci_rp](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/service_principal) (data source)
- [azurerm_arc_machine.arcservers](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/arc_machine) (data source)
- [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) (data source)
- [azurerm_client_config.telemetry](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) (data source)
- [azurerm_key_vault.key_vault](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/key_vault) (data source)
- [azurerm_storage_account.witness](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/storage_account) (data source)
- [modtm_module_source.telemetry](https://registry.terraform.io/providers/azure/modtm/latest/docs/data-sources/module_source) (data source)

<!-- markdownlint-disable MD013 -->
## Required Inputs

The following input variables are required:

### <a name="input_adou_path"></a> [adou\_path](#input\_adou\_path)

Description: The Active Directory OU path.

Type: `string`

### <a name="input_custom_location_name"></a> [custom\_location\_name](#input\_custom\_location\_name)

Description: The name of the custom location.

Type: `string`

### <a name="input_default_gateway"></a> [default\_gateway](#input\_default\_gateway)

Description: The default gateway for the network.

Type: `string`

### <a name="input_deployment_user"></a> [deployment\_user](#input\_deployment\_user)

Description: The username for the domain administrator account.

Type: `string`

### <a name="input_deployment_user_password"></a> [deployment\_user\_password](#input\_deployment\_user\_password)

Description: The password for the domain administrator account.

Type: `string`

### <a name="input_dns_servers"></a> [dns\_servers](#input\_dns\_servers)

Description: A list of DNS server IP addresses.

Type: `list(string)`

### <a name="input_domain_fqdn"></a> [domain\_fqdn](#input\_domain\_fqdn)

Description: The domain FQDN.

Type: `string`

### <a name="input_ending_address"></a> [ending\_address](#input\_ending\_address)

Description: The ending IP address of the IP address range.

Type: `string`

### <a name="input_keyvault_name"></a> [keyvault\_name](#input\_keyvault\_name)

Description: The name of the key vault.

Type: `string`

### <a name="input_local_admin_password"></a> [local\_admin\_password](#input\_local\_admin\_password)

Description: The password for the local administrator account.

Type: `string`

### <a name="input_local_admin_user"></a> [local\_admin\_user](#input\_local\_admin\_user)

Description: The username for the local administrator account.

Type: `string`

### <a name="input_location"></a> [location](#input\_location)

Description: Azure region where the resource should be deployed.

Type: `string`

### <a name="input_name"></a> [name](#input\_name)

Description: The name of the HCI cluster. Must be the same as the name when preparing AD.

Type: `string`

### <a name="input_resource_group_id"></a> [resource\_group\_id](#input\_resource\_group\_id)

Description: The resource id of resource group.

Type: `string`

### <a name="input_servers"></a> [servers](#input\_servers)

Description: A list of servers with their names and IPv4 addresses.

Type:

```hcl
list(object({
    name        = string
    ipv4Address = string
  }))
```

### <a name="input_service_principal_id"></a> [service\_principal\_id](#input\_service\_principal\_id)

Description: The service principal ID for the Azure account.

Type: `string`

### <a name="input_service_principal_secret"></a> [service\_principal\_secret](#input\_service\_principal\_secret)

Description: The service principal secret for the Azure account.

Type: `string`

### <a name="input_site_id"></a> [site\_id](#input\_site\_id)

Description: A unique identifier for the site.

Type: `string`

### <a name="input_starting_address"></a> [starting\_address](#input\_starting\_address)

Description: The starting IP address of the IP address range.

Type: `string`

## Optional Inputs

The following input variables are optional (have default values):

### <a name="input_account_replication_type"></a> [account\_replication\_type](#input\_account\_replication\_type)

Description: The replication type for the storage account.

Type: `string`

Default: `"ZRS"`

### <a name="input_allow_nested_items_to_be_public"></a> [allow\_nested\_items\_to\_be\_public](#input\_allow\_nested\_items\_to\_be\_public)

Description: Indicates whether nested items can be public.

Type: `bool`

Default: `false`

### <a name="input_azure_service_endpoint"></a> [azure\_service\_endpoint](#input\_azure\_service\_endpoint)

Description: The Azure service endpoint.

Type: `string`

Default: `"core.windows.net"`

### <a name="input_azure_stack_lcm_user_credential_content_type"></a> [azure\_stack\_lcm\_user\_credential\_content\_type](#input\_azure\_stack\_lcm\_user\_credential\_content\_type)

Description: (Optional) Content type of the azure stack lcm user credential.

Type: `string`

Default: `null`

### <a name="input_azure_stack_lcm_user_credential_expiration_date"></a> [azure\_stack\_lcm\_user\_credential\_expiration\_date](#input\_azure\_stack\_lcm\_user\_credential\_expiration\_date)

Description: (Optional) Expiration date of the azure stack lcm user credential.

Type: `string`

Default: `null`

### <a name="input_azure_stack_lcm_user_credential_tags"></a> [azure\_stack\_lcm\_user\_credential\_tags](#input\_azure\_stack\_lcm\_user\_credential\_tags)

Description: (Optional) Tags of the azure stack lcm user credential.

Type: `map(string)`

Default: `null`

### <a name="input_bitlocker_boot_volume"></a> [bitlocker\_boot\_volume](#input\_bitlocker\_boot\_volume)

Description: When set to true, BitLocker XTS\_AES 256-bit encryption is enabled for all data-at-rest on the OS volume of your Azure Stack HCI cluster. This setting is TPM-hardware dependent.

Type: `bool`

Default: `true`

### <a name="input_bitlocker_data_volumes"></a> [bitlocker\_data\_volumes](#input\_bitlocker\_data\_volumes)

Description: When set to true, BitLocker XTS-AES 256-bit encryption is enabled for all data-at-rest on your Azure Stack HCI cluster shared volumes.

Type: `bool`

Default: `true`

### <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name)

Description: The name of the HCI cluster.

Type: `string`

Default: `""`

### <a name="input_cluster_tags"></a> [cluster\_tags](#input\_cluster\_tags)

Description: (Optional) Tags of the cluster.

Type: `map(string)`

Default: `null`

### <a name="input_compute_intent_name"></a> [compute\_intent\_name](#input\_compute\_intent\_name)

Description: The name of compute intent.

Type: `string`

Default: `"ManagementCompute"`

### <a name="input_compute_override_adapter_property"></a> [compute\_override\_adapter\_property](#input\_compute\_override\_adapter\_property)

Description: Indicates whether to override adapter property for compute.

Type: `bool`

Default: `true`

### <a name="input_compute_override_qos_policy"></a> [compute\_override\_qos\_policy](#input\_compute\_override\_qos\_policy)

Description: Indicates whether to override qos policy for compute network.

Type: `bool`

Default: `false`

### <a name="input_compute_qos_policy_overrides"></a> [compute\_qos\_policy\_overrides](#input\_compute\_qos\_policy\_overrides)

Description: QoS policy overrides for network settings with required properties for compute.

Type:

```hcl
object({
    priorityValue8021Action_SMB     = string
    priorityValue8021Action_Cluster = string
    bandwidthPercentage_SMB         = string
  })
```

Default:

```json
{
  "bandwidthPercentage_SMB": "",
  "priorityValue8021Action_Cluster": "",
  "priorityValue8021Action_SMB": ""
}
```

### <a name="input_compute_rdma_enabled"></a> [compute\_rdma\_enabled](#input\_compute\_rdma\_enabled)

Description: Indicates whether RDMA is enabled for compute.

Type: `bool`

Default: `false`

### <a name="input_compute_rdma_jumbo_packet"></a> [compute\_rdma\_jumbo\_packet](#input\_compute\_rdma\_jumbo\_packet)

Description: The jumbo packet size for RDMA of compute network.

Type: `string`

Default: `"9014"`

### <a name="input_compute_rdma_protocol"></a> [compute\_rdma\_protocol](#input\_compute\_rdma\_protocol)

Description: The RDMA protocol of compute network.

Type: `string`

Default: `"RoCEv2"`

### <a name="input_compute_traffic_type"></a> [compute\_traffic\_type](#input\_compute\_traffic\_type)

Description: Traffic type of compute.

Type: `list(string)`

Default:

```json
[
  "Management",
  "Compute"
]
```

### <a name="input_configuration_mode"></a> [configuration\_mode](#input\_configuration\_mode)

Description: The configuration mode for the storage.

Type: `string`

Default: `"Express"`

### <a name="input_create_hci_rp_role_assignments"></a> [create\_hci\_rp\_role\_assignments](#input\_create\_hci\_rp\_role\_assignments)

Description: Indicates whether to create role assignments for the HCI resource provider service principal.

Type: `bool`

Default: `false`

### <a name="input_create_key_vault"></a> [create\_key\_vault](#input\_create\_key\_vault)

Description: Set to true to create the key vault, or false to skip it

Type: `bool`

Default: `true`

### <a name="input_create_witness_storage_account"></a> [create\_witness\_storage\_account](#input\_create\_witness\_storage\_account)

Description: Set to true to create the witness storage account, or false to skip it

Type: `bool`

Default: `true`

### <a name="input_credential_guard_enforced"></a> [credential\_guard\_enforced](#input\_credential\_guard\_enforced)

Description: When set to true, Credential Guard is enabled on your Azure HCI cluster.

Type: `bool`

Default: `false`

### <a name="input_cross_tenant_replication_enabled"></a> [cross\_tenant\_replication\_enabled](#input\_cross\_tenant\_replication\_enabled)

Description: Indicates whether cross-tenant replication is enabled.

Type: `bool`

Default: `false`

### <a name="input_default_arb_application_content_type"></a> [default\_arb\_application\_content\_type](#input\_default\_arb\_application\_content\_type)

Description: (Optional) Content type of the default arb application.

Type: `string`

Default: `null`

### <a name="input_default_arb_application_expiration_date"></a> [default\_arb\_application\_expiration\_date](#input\_default\_arb\_application\_expiration\_date)

Description: (Optional) Expiration date of the default arb application.

Type: `string`

Default: `null`

### <a name="input_default_arb_application_tags"></a> [default\_arb\_application\_tags](#input\_default\_arb\_application\_tags)

Description: (Optional) Tags of the default arb application.

Type: `map(string)`

Default: `null`

### <a name="input_deployment_configuration_version"></a> [deployment\_configuration\_version](#input\_deployment\_configuration\_version)

Description: The version of deployment configuration. Latest version will be used if not specified.

Type: `string`

Default: `null`

### <a name="input_drift_control_enforced"></a> [drift\_control\_enforced](#input\_drift\_control\_enforced)

Description: When set to true, the security baseline is re-applied regularly.

Type: `bool`

Default: `true`

### <a name="input_drtm_protection"></a> [drtm\_protection](#input\_drtm\_protection)

Description: By default, Secure Boot is enabled on your Azure HCI cluster. This setting is hardware dependent.

Type: `bool`

Default: `true`

### <a name="input_enable_telemetry"></a> [enable\_telemetry](#input\_enable\_telemetry)

Description: This variable controls whether or not telemetry is enabled for the module.  
For more information see <https://aka.ms/avm/telemetryinfo>.  
If it is set to false, then no telemetry will be collected.

Type: `bool`

Default: `true`

### <a name="input_eu_location"></a> [eu\_location](#input\_eu\_location)

Description: Indicates whether the location is in EU.

Type: `bool`

Default: `false`

### <a name="input_hvci_protection"></a> [hvci\_protection](#input\_hvci\_protection)

Description: By default, Hypervisor-protected Code Integrity is enabled on your Azure HCI cluster.

Type: `bool`

Default: `true`

### <a name="input_intent_name"></a> [intent\_name](#input\_intent\_name)

Description: The name of intent.

Type: `string`

Default: `"ManagementComputeStorage"`

### <a name="input_is_exported"></a> [is\_exported](#input\_is\_exported)

Description: Indicate whether the resource is exported

Type: `bool`

Default: `false`

### <a name="input_key_vault_location"></a> [key\_vault\_location](#input\_key\_vault\_location)

Description: The location of the key vault.

Type: `string`

Default: `""`

### <a name="input_key_vault_resource_group"></a> [key\_vault\_resource\_group](#input\_key\_vault\_resource\_group)

Description: The resource group of the key vault.

Type: `string`

Default: `""`

### <a name="input_keyvault_purge_protection_enabled"></a> [keyvault\_purge\_protection\_enabled](#input\_keyvault\_purge\_protection\_enabled)

Description: Indicates whether purge protection is enabled.

Type: `bool`

Default: `true`

### <a name="input_keyvault_secrets"></a> [keyvault\_secrets](#input\_keyvault\_secrets)

Description: A list of key vault secrets.

Type:

```hcl
list(object({
    eceSecretName = string
    secretSuffix  = string
  }))
```

Default: `[]`

### <a name="input_keyvault_soft_delete_retention_days"></a> [keyvault\_soft\_delete\_retention\_days](#input\_keyvault\_soft\_delete\_retention\_days)

Description: The number of days that items should be retained for soft delete.

Type: `number`

Default: `30`

### <a name="input_keyvault_tags"></a> [keyvault\_tags](#input\_keyvault\_tags)

Description: (Optional) Tags of the keyvault.

Type: `map(string)`

Default: `null`

### <a name="input_local_admin_credential_content_type"></a> [local\_admin\_credential\_content\_type](#input\_local\_admin\_credential\_content\_type)

Description: (Optional) Content type of the local admin credential.

Type: `string`

Default: `null`

### <a name="input_local_admin_credential_expiration_date"></a> [local\_admin\_credential\_expiration\_date](#input\_local\_admin\_credential\_expiration\_date)

Description: (Optional) Expiration date of the local admin credential.

Type: `string`

Default: `null`

### <a name="input_local_admin_credential_tags"></a> [local\_admin\_credential\_tags](#input\_local\_admin\_credential\_tags)

Description: (Optional) Tags of the local admin credential.

Type: `map(string)`

Default: `null`

### <a name="input_lock"></a> [lock](#input\_lock)

Description: Controls the Resource Lock configuration for this resource. The following properties can be specified:

- `kind` - (Required) The type of lock. Possible values are `\"CanNotDelete\"` and `\"ReadOnly\"`.
- `name` - (Optional) The name of the lock. If not specified, a name will be generated based on the `kind` value. Changing this forces the creation of a new resource.

Type:

```hcl
object({
    kind = string
    name = optional(string, null)
  })
```

Default: `null`

### <a name="input_management_adapters"></a> [management\_adapters](#input\_management\_adapters)

Description: A list of management adapters.

Type: `list(string)`

Default: `[]`

### <a name="input_min_tls_version"></a> [min\_tls\_version](#input\_min\_tls\_version)

Description: The minimum TLS version.

Type: `string`

Default: `"TLS1_2"`

### <a name="input_naming_prefix"></a> [naming\_prefix](#input\_naming\_prefix)

Description: The naming prefix in HCI deployment settings. Site id will be used if not provided.

Type: `string`

Default: `""`

### <a name="input_operation_type"></a> [operation\_type](#input\_operation\_type)

Description: The intended operation for a cluster.

Type: `string`

Default: `"ClusterProvisioning"`

### <a name="input_override_adapter_property"></a> [override\_adapter\_property](#input\_override\_adapter\_property)

Description: Indicates whether to override adapter property.

Type: `bool`

Default: `true`

### <a name="input_override_qos_policy"></a> [override\_qos\_policy](#input\_override\_qos\_policy)

Description: Indicates whether to override qos policy for converged network.

Type: `bool`

Default: `false`

### <a name="input_qos_policy_overrides"></a> [qos\_policy\_overrides](#input\_qos\_policy\_overrides)

Description: QoS policy overrides for network settings with required properties.

Type:

```hcl
object({
    priorityValue8021Action_SMB     = string
    priorityValue8021Action_Cluster = string
    bandwidthPercentage_SMB         = string
  })
```

Default:

```json
{
  "bandwidthPercentage_SMB": "",
  "priorityValue8021Action_Cluster": "",
  "priorityValue8021Action_SMB": ""
}
```

### <a name="input_random_suffix"></a> [random\_suffix](#input\_random\_suffix)

Description: Indicate whether to add random suffix

Type: `bool`

Default: `true`

### <a name="input_rdma_enabled"></a> [rdma\_enabled](#input\_rdma\_enabled)

Description: Enables RDMA when set to true. In a converged network configuration, this will make the network use RDMA. In a dedicated storage network configuration, enabling this will enable RDMA on the storage network.

Type: `bool`

Default: `false`

### <a name="input_rdma_jumbo_packet"></a> [rdma\_jumbo\_packet](#input\_rdma\_jumbo\_packet)

Description: The jumbo packet size for RDMA of converged network.

Type: `string`

Default: `"9014"`

### <a name="input_rdma_protocol"></a> [rdma\_protocol](#input\_rdma\_protocol)

Description: The RDMA protocol of converged network.

Type: `string`

Default: `"RoCEv2"`

### <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location)

Description: The location of resource group.

Type: `string`

Default: `""`

### <a name="input_role_assignments"></a> [role\_assignments](#input\_role\_assignments)

Description: A map of role assignments to create on this resource. The map key is deliberately arbitrary to avoid issues where map keys maybe unknown at plan time.

- `role_definition_id_or_name` - The ID or name of the role definition to assign to the principal.
- `principal_id` - The ID of the principal to assign the role to.
- `description` - The description of the role assignment.
- `skip_service_principal_aad_check` - If set to true, skips the Azure Active Directory check for the service principal in the tenant. Defaults to false.
- `condition` - The condition which will be used to scope the role assignment.
- `condition_version` - The version of the condition syntax. Valid values are '2.0'.

> Note: only set `skip_service_principal_aad_check` to true if you are assigning a role to a service principal.

Type:

```hcl
map(object({
    role_definition_id_or_name             = string
    principal_id                           = string
    description                            = optional(string, null)
    skip_service_principal_aad_check       = optional(bool, false)
    condition                              = optional(string, null)
    condition_version                      = optional(string, null)
    delegated_managed_identity_resource_id = optional(string, null)
    principal_type                         = optional(string, null)
  }))
```

Default: `{}`

### <a name="input_rp_service_principal_object_id"></a> [rp\_service\_principal\_object\_id](#input\_rp\_service\_principal\_object\_id)

Description: The object ID of the HCI resource provider service principal.

Type: `string`

Default: `""`

### <a name="input_secrets_location"></a> [secrets\_location](#input\_secrets\_location)

Description: Secrets location for the deployment.

Type: `string`

Default: `""`

### <a name="input_side_channel_mitigation_enforced"></a> [side\_channel\_mitigation\_enforced](#input\_side\_channel\_mitigation\_enforced)

Description: When set to true, all the side channel mitigations are enabled.

Type: `bool`

Default: `true`

### <a name="input_smb_cluster_encryption"></a> [smb\_cluster\_encryption](#input\_smb\_cluster\_encryption)

Description: When set to true, cluster east-west traffic is encrypted.

Type: `bool`

Default: `false`

### <a name="input_smb_signing_enforced"></a> [smb\_signing\_enforced](#input\_smb\_signing\_enforced)

Description: When set to true, the SMB default instance requires sign in for the client and server services.

Type: `bool`

Default: `true`

### <a name="input_storage_adapter_ip_info"></a> [storage\_adapter\_ip\_info](#input\_storage\_adapter\_ip\_info)

Description: The IP information for the storage networks. Key is the storage network name.

Type:

```hcl
map(list(object({
    physicalNode = string
    ipv4Address  = string
    subnetMask   = string
  })))
```

Default: `null`

### <a name="input_storage_connectivity_switchless"></a> [storage\_connectivity\_switchless](#input\_storage\_connectivity\_switchless)

Description: Indicates whether storage connectivity is switchless.

Type: `bool`

Default: `false`

### <a name="input_storage_intent_name"></a> [storage\_intent\_name](#input\_storage\_intent\_name)

Description: The name of storage intent.

Type: `string`

Default: `"Storage"`

### <a name="input_storage_networks"></a> [storage\_networks](#input\_storage\_networks)

Description: A list of storage networks.

Type:

```hcl
list(object({
    name               = string
    networkAdapterName = string
    vlanId             = string
  }))
```

Default: `[]`

### <a name="input_storage_override_adapter_property"></a> [storage\_override\_adapter\_property](#input\_storage\_override\_adapter\_property)

Description: Indicates whether to override adapter property for storage network.

Type: `bool`

Default: `true`

### <a name="input_storage_override_qos_policy"></a> [storage\_override\_qos\_policy](#input\_storage\_override\_qos\_policy)

Description: Indicates whether to override qos policy for storage network.

Type: `bool`

Default: `false`

### <a name="input_storage_qos_policy_overrides"></a> [storage\_qos\_policy\_overrides](#input\_storage\_qos\_policy\_overrides)

Description: QoS policy overrides for network settings with required properties for storage.

Type:

```hcl
object({
    priorityValue8021Action_SMB     = string
    priorityValue8021Action_Cluster = string
    bandwidthPercentage_SMB         = string
  })
```

Default:

```json
{
  "bandwidthPercentage_SMB": "",
  "priorityValue8021Action_Cluster": "",
  "priorityValue8021Action_SMB": ""
}
```

### <a name="input_storage_rdma_enabled"></a> [storage\_rdma\_enabled](#input\_storage\_rdma\_enabled)

Description: Indicates whether RDMA is enabled for storage. Storage RDMA will be enabled if either rdma\_enabled or storage\_rdma\_enabled is set to true.

Type: `bool`

Default: `false`

### <a name="input_storage_rdma_jumbo_packet"></a> [storage\_rdma\_jumbo\_packet](#input\_storage\_rdma\_jumbo\_packet)

Description: The jumbo packet size for RDMA of storage network.

Type: `string`

Default: `"9014"`

### <a name="input_storage_rdma_protocol"></a> [storage\_rdma\_protocol](#input\_storage\_rdma\_protocol)

Description: The RDMA protocol of storage network.

Type: `string`

Default: `"RoCEv2"`

### <a name="input_storage_tags"></a> [storage\_tags](#input\_storage\_tags)

Description: (Optional) Tags of the storage.

Type: `map(string)`

Default: `null`

### <a name="input_storage_traffic_type"></a> [storage\_traffic\_type](#input\_storage\_traffic\_type)

Description: Traffic type of storage.

Type: `list(string)`

Default:

```json
[
  "Storage"
]
```

### <a name="input_subnet_mask"></a> [subnet\_mask](#input\_subnet\_mask)

Description: The subnet mask for the network.

Type: `string`

Default: `"255.255.255.0"`

### <a name="input_tenant_id"></a> [tenant\_id](#input\_tenant\_id)

Description: (Optional) Value of the tenant id

Type: `string`

Default: `""`

### <a name="input_traffic_type"></a> [traffic\_type](#input\_traffic\_type)

Description: Traffic type of intent.

Type: `list(string)`

Default:

```json
[
  "Management",
  "Compute",
  "Storage"
]
```

### <a name="input_use_legacy_key_vault_model"></a> [use\_legacy\_key\_vault\_model](#input\_use\_legacy\_key\_vault\_model)

Description: Indicates whether to use the legacy key vault model.

Type: `bool`

Default: `false`

### <a name="input_wdac_enforced"></a> [wdac\_enforced](#input\_wdac\_enforced)

Description: WDAC is enabled by default and limits the applications and the code that you can run on your Azure Stack HCI cluster.

Type: `bool`

Default: `true`

### <a name="input_witness_path"></a> [witness\_path](#input\_witness\_path)

Description: The path to the witness.

Type: `string`

Default: `"Cloud"`

### <a name="input_witness_storage_account_name"></a> [witness\_storage\_account\_name](#input\_witness\_storage\_account\_name)

Description: The name of the witness storage account.

Type: `string`

Default: `""`

### <a name="input_witness_storage_account_resource_group_name"></a> [witness\_storage\_account\_resource\_group\_name](#input\_witness\_storage\_account\_resource\_group\_name)

Description: The resource group of the witness storage account. If not provided, 'resource\_group\_name' will be used as the storage account's resource group.

Type: `string`

Default: `""`

### <a name="input_witness_storage_key_content_type"></a> [witness\_storage\_key\_content\_type](#input\_witness\_storage\_key\_content\_type)

Description: (Optional) Content type of the witness storage key.

Type: `string`

Default: `null`

### <a name="input_witness_storage_key_expiration_date"></a> [witness\_storage\_key\_expiration\_date](#input\_witness\_storage\_key\_expiration\_date)

Description: (Optional) Expiration date of the witness storage key.

Type: `string`

Default: `null`

### <a name="input_witness_storage_key_tags"></a> [witness\_storage\_key\_tags](#input\_witness\_storage\_key\_tags)

Description: (Optional) Tags of the witness storage key.

Type: `map(string)`

Default: `null`

### <a name="input_witness_type"></a> [witness\_type](#input\_witness\_type)

Description: The type of the witness.

Type: `string`

Default: `"Cloud"`

## Outputs

The following outputs are exported:

### <a name="output_arc_settings"></a> [arc\_settings](#output\_arc\_settings)

Description: Arc settings instance after HCI connected.

### <a name="output_arcbridge"></a> [arcbridge](#output\_arcbridge)

Description: Arc resource bridge instance after HCI connected.

### <a name="output_cluster"></a> [cluster](#output\_cluster)

Description: HCI Cluster instance

### <a name="output_customlocation"></a> [customlocation](#output\_customlocation)

Description: Custom location instance after HCI connected.

### <a name="output_keyvault"></a> [keyvault](#output\_keyvault)

Description: Keyvault instance that stores deployment secrets.

### <a name="output_resource_id"></a> [resource\_id](#output\_resource\_id)

Description: This is the full output for the resource.

### <a name="output_user_storages"></a> [user\_storages](#output\_user\_storages)

Description: User storage instances after HCI connected.

### <a name="output_v_switch_name"></a> [v\_switch\_name](#output\_v\_switch\_name)

Description: The name of the virtual switch that is used by the network.

## Modules

No modules.

<!-- markdownlint-disable-next-line MD041 -->
## Data Collection

The software may collect information about you and your use of the software and send it to Microsoft. Microsoft may use this information to provide services and improve our products and services. You may turn off the telemetry as described in the repository. There are also some features in the software that may enable you and Microsoft to collect data from users of your applications. If you use these features, you must comply with applicable law, including providing appropriate notices to users of your applications together with a copy of Microsoft’s privacy statement. Our privacy statement is located at <https://go.microsoft.com/fwlink/?LinkID=824704>. You can learn more about data collection and use in the help documentation and our privacy statement. Your use of the software operates as your consent to these practices.
<!-- END_TF_DOCS -->