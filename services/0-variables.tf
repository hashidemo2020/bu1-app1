variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "project_name" {
    description = "the name for this project or application"
}

variable "instance_type" {
    description = "the AWS instance type"
}

variable "default_tags" {
  description = "Tags to be applied to resources"
  type        = map(string)
}

variable "instance_key_name" {
  description = "Key to be used for resource"
}

variable "ec2_ami" {
  description = "ami for ec2"
}


variable "remote_organization" {
  description = "org where Remote Workspace for Subnet/Security Group is defined"
}

variable "subnet_remote_workspace_name" {
  description = "Remote Workspace where subnet is defined"
}

variable "token_org" {
  description = "Token for the ECC Org"
}

variable "bu_name" {
  description = "Name of the BU"
}