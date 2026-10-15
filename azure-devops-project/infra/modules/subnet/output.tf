output "name" {
  description = "Name of th azure subnet"
  value       = azurerm_subnet.this.name
}
output "id" {
  description = "ID of the azure subnet"
  value       = azurerm_subnet.this.id
}
output "address_prefixes" {
  value = azurerm_subnet.this.address_prefixes
}