data "terraform_remote_state" "main" {
  backend = "remote"
  config = {
    organization = "skyarkitektur"
    workspaces = {
      name = "demo-terraform-cloud"
    }
  }
}