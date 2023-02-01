module "aks_private_dns_zone" {
  source = "git::https://gitlab.com/OmerBrumer/private_dns_zone.git"

  private_dns_zone_name = "brumerfinalterraformworkspoke.private.westeurope.azmk8s.io"
  resource_group_name   = "brumer-final-terraform-workspoke-rg"
  location              = "West Europe"
}