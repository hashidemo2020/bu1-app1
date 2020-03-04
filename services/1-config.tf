terraform {
  required_version = ">= 0.12"  
}

provider "aws" {
  region = var.aws_region
}

module "landingzone-view" {
  source  = "app.terraform.io/FMR_BU1/landingzone-view/ecc"
  version = "1.3.0"

  remote_organization = var.remote_organization
  subnet_remote_workspace_name = var.subnet_remote_workspace_name
  token_org = var.token_org
  bu_name = var.bu_name
}