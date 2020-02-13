variable "aws_region" {
    description = "the region where thhis vault cluster will be installed"
}

variable "project_name" {
    description = "the name for this project or application"
}

variable "remote_organization" {
  description = "org where Remote Workspace for ECC View is defined"
}

variable "view_remote_workspace_name" {
  description = "Remote Workspace where ECC View is defined"
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