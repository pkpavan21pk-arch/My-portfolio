variable "name" {
  description = "name of the virtual network"
  type        = string
}
variable "location" {
  description = " azure region for the virtual network"
  type        = string
}
variable "resource_group_name" {
  description = " name of the existing resource group"
  type        = string
}
variable "address_space" {
  description = "IP address range of virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}
variable "tags" {
  description = "Tags to apply to the virtual network"
}