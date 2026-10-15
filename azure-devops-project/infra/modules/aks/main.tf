resource "azurerm_kubernetes_cluster" "this" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  sku_tier = "Free"

  default_node_pool {
    name           = "system"
    node_count     = var.node_count
    vm_size        = var.vm_size
    vnet_subnet_id = var.subnet_id
  }
  identity {
    type = "SystemAssigned"
  }
  network_profile {
  network_plugin = "azure"
  service_cidr   = "10.2.0.0/16"
  dns_service_ip = "10.2.0.10"
}
  tags = var.tags
}


