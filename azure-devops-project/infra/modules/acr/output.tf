output "name" {
  description = " Name of the Azure container registry"
  value       = azurerm_container_registry.this.name
}
output "id" {
  description = " ID of the ACR "
  value       = azurerm_container_registry.this.id
}
output "login_server" {
  description = "login server URL for the ACR"
  value       = azurerm_container_registry.this.login_server
}
