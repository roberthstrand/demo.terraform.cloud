# Remote State
data "terraform_remote_state" "main" {
  backend = "remote"
  config = {
    organization = "skyarkitektur"
    workspaces = {
      name = "demo-terraform-cloud"
    }
  }
}
# Provider, Azure
provider "azurerm" {
  version = "=2.20.0"
  features {}
}

module "demo_module" {
  source = "./modules/resource_group"

  name   = "terraform-cloud-rg"
}