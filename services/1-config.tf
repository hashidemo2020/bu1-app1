terraform {
  required_version = ">= 0.12"  
}

provider "aws" {
  region = var.aws_region
}

data "terraform_remote_state" "subnet" {
  backend = "atlas"

  config = {
    address = "https://app.terraform.io"
    name = "${var.remote_organization}/${var.subnet_remote_workspace_name}"
    access_token = var.token_org
  }
}
