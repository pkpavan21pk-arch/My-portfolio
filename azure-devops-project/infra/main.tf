module "resource_group" {
  source   = "./modules/resource-group"
  name     = "rg-devops-demo"
  location = "eastus"

  tags = {
    Environment = "Dev"
    project     = "azuredevops"
    owner       = "pavan"
  }
}
module "virtual_network" {
  source              = "./modules/network"
  name                = "vnet-devops-demo"
  location            = "eastus"
  resource_group_name = module.resource_group.name
  address_space       = ["10.0.0.0/16"]

  tags = {
    Environment = "Dev"
    project     = "azuredevops"
    owner       = "pavan"
  }
}
module "subnet" {
  source               = "./modules/subnet"
  name                 = "snet-aks"
  resource_group_name  = module.resource_group.name
  virtual_network_name = module.virtual_network.name
  address_prefixes     = ["10.0.1.0/24"]
}
module "acr" {
  source              = "./modules/acr"
  name                = "pavandevopsacr20261015"
  resource_group_name = module.resource_group.name
  location            = "eastus"
  sku                 = "Basic"

  tags = {
    Environment = "Dev"
    project     = "azuredevops"
    owner       = "pavan"
  }
}
module "aks" {
  source              = "./modules/aks"
  name                = "aks-devops-demo"
  location            = "eastus"
  resource_group_name = module.resource_group.name
  dns_prefix          = "aks-devops-demo-pavan"
  subnet_id           = module.subnet.id
  node_count          = 1
  vm_size             = "Standard_D2s_v4"

  tags = {
    Environment = "Dev"
    project     = "azuredevops"
    owner       = "pavan"
  }
}