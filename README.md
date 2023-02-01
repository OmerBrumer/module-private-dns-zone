<!-- BEGIN_TF_DOCS -->

# Azure Private DNS Zone module

## Examples
```hcl
module "aks_private_dns_zone" {
  source = "../../private_dns_zone"

  private_dns_zone_name = "brumerfinalterraformworkspoke.private.westeurope.azmk8s.io"
  resource_group_name   = "brumer-final-terraform-workspoke-rg"
  location              = "West Europe"
}
```

#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Id of private dns zone. |
| <a name="output_name"></a> [name](#output\_name) | Name of private dns zone. |
| <a name="output_object"></a> [object](#output\_object) | Object of private dns zone. |

#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input\_location) | (Required)The location to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'. | `string` | n/a | yes |
| <a name="input_private_dns_zone_name"></a> [private\_dns\_zone\_name](#input\_private\_dns\_zone\_name) | (Required)Private dns zone name. | `string` | n/a | yes |
| <a name="input_resource_group_name"></a> [resource\_group\_name](#input\_resource\_group\_name) | (Required)A container that holds related resources for an Azure solution. | `string` | n/a | yes |
| <a name="input_a_records"></a> [a\_records](#input\_a\_records) | (Optional)List of A records, ttl-The Time To Live (TTL) of the DNS record in seconds, records-List of IPv4 Addresses. | <pre>map(object({<br>    ttl     = number<br>    records = optional(list(string))<br>  }))</pre> | `{}` | no |
| <a name="input_private_dns_zone_ids"></a> [private\_dns\_zone\_ids](#input\_private\_dns\_zone\_ids) | (Optional)Specifies the list of Private DNS Zones to include within the private\_dns\_zone\_group. | `list(string)` | `[]` | no |
| <a name="input_registration_enabled"></a> [registration\_enabled](#input\_registration\_enabled) | (Optional)Is auto-registration of virtual machine records in the virtual network in the Private DNS zone enabled? | `bool` | `false` | no |
| <a name="input_virtual_network_links"></a> [virtual\_network\_links](#input\_virtual\_network\_links) | (Optional)These Links enable DNS resolution. | <pre>map(object({<br>    virtual_network_id = string<br>  }))</pre> | `{}` | no |



# Authors
Originally created by Omer Brumer
<!-- END_TF_DOCS -->