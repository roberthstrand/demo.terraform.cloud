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
  version = "~>2.4.0"
  features {}
}