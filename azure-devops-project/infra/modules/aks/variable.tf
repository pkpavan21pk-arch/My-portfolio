variable "name" {
  description = "Name of the AKS cluster"
  type        = string
}
variable "location" {
  description = "Azure region for the AKS cluster"
  type        = string
}
variable "resource_group_name" {
  description = " Existing resource groupn name of AKS"
  type        = string
}
variable "dns_prefix" {
  description = "DNS prefix for AKS cluster"
  type        = string
}
variable "subnet_id" {
  description = " ID of the subnet for AKS node "
  type        = string
}
variable "node_count" {
  description = "Number of AKS worker node"
  type        = number
  default     = 1
}
variable "vm_size" {
  description = "VM Size of the AKS worker nodes"
  type        = string
  default     = "Standard_B2s"
}
variable "tags" {
  description = "tags associated with AKS cluster"
  type        = map(string)
  default     = {}
}