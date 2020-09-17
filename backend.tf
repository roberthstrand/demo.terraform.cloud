terraform {
  backend "remote" {
    organization = "skyarkitektur"

    workspaces {
      name = "demo-terraform-cloud"
    }
  }
}