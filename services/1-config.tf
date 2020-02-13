terraform {
  required_version = ">= 0.12"  
}

provider "aws" {
  region = var.aws_region
}



data "terraform_remote_state" "ecc_view" {
  backend = "remote"
  config = {
    organization = var.remote_organization
    workspaces = {
      name = var.view_remote_workspace_name
    }
  }
}