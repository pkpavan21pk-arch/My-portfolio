variable "subscription_id" {
  description = "azure subscrption id used for deployment"
  type        = string
}
variable "name" {
  description = " name of the azure resource group"
  type        = string
}
variable "location" {
  description = "Azure region for resource group"
  type        = string
}
variable "tags" {
  description = "tags to apply to the resource group"
  type        = map(string)
  default     = {}
}