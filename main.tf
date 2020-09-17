# Provider, Azure
provider "azurerm" {
  version = "=2.20.0"
  features {}
}

module "resource_group" {
  source = "./modules/resource_group"

  name   = "terraform-cloud-rg"
}

module "network" {
  source              = "Azure/network/azurerm"
  resource_group_name = module.resource_group.name
  address_space       = "10.0.0.0/16"
  subnet_prefixes     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  subnet_names        = ["subnet1", "subnet2", "subnet3"]

  tags = {
    environment = "demo"
    crayon      = "Hello"
  }

  depends_on = [module.resource_group]
}