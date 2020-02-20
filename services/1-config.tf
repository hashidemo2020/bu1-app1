terraform {
  required_version = ">= 0.12"  
}

provider "aws" {
  region = var.aws_region
}

data "terraform_remote_state" "ecc_view" {
  backend = "remote"
  config = {
    organization = var.bu_name
    workspaces = {
      name = var.config_version
    }
  }
}
