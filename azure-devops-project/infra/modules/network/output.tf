output "name" {
  description = " Name of the Azure virtual network "
  value       = azurerm_virtual_network.this.name
}

output "id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.this.id
}
output "address_space" {
  description = " IP address range for Virtual network"
  value       = azurerm_virtual_network.this.address_space
}
