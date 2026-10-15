variable "name" {
  description = "Name of the azure subnet"
  type        = string
}
variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
}
variable "virtual_network_name" {
  description = "Name of the existing virtual network"
  type        = string
}
variable "address_prefixes" {
  description = "IP address range for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}