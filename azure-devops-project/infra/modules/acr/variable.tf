variable "name" {
  description = " Name of the azure container registry"
  type        = string
}
variable "resource_group_name" {
  description = "Existing resource group of ACR"
  type        = string
}
variable "location" {
  description = " Region for the ACR"
  type        = string
  default     = "Basic"
}
variable "sku" {
  description = "SKU tier for the ACR"
  type        = string
}
variable "tags" {
  description = " tags to apply to the ACR"
  type        = map(string)

}

