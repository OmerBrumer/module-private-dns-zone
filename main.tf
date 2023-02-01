/**
* # Azure Private DNS Zone module
*/

resource "azurerm_private_dns_zone" "private_dns" {
  name                = var.private_dns_zone_name
  resource_group_name = var.resource_group_name

  lifecycle {
    ignore_changes = [
      tags
    ]
  }
}

resource "azurerm_private_dns_a_record" "a_records" {
  for_each            = var.a_records == {} ? {} : var.a_records
  resource_group_name = var.resource_group_name

  name      = each.key
  ttl       = each.value.ttl
  records   = each.value.records
  zone_name = azurerm_private_dns_zone.private_dns.name

  depends_on = [
    azurerm_private_dns_zone.private_dns
  ]
}

resource "azurerm_private_dns_zone_virtual_network_link" "vnet" {
  for_each = var.virtual_network_links

  name                  = "${each.key}-link"
  resource_group_name   = var.resource_group_name
  private_dns_zone_name = azurerm_private_dns_zone.private_dns.name
  virtual_network_id    = each.value.virtual_network_id
  registration_enabled  = var.registration_enabled

  lifecycle {
    ignore_changes = [
      tags
    ]
  }

  depends_on = [
    azurerm_private_dns_zone.private_dns
  ]
}