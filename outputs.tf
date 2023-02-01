output "id" {
  description = "Id of private dns zone."
  value       = azurerm_private_dns_zone.private_dns.id
}

output "name" {
  description = "Name of private dns zone."
  value       = azurerm_private_dns_zone.private_dns.name
}

output "object" {
  description = "Object of private dns zone."
  value       = azurerm_private_dns_zone.private_dns
}