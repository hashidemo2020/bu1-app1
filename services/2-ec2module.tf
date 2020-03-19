module "ec2-instance" {
  source  = "app.terraform.io/FMR_BU1/ec2-instance/aws"
  version = "3.1.1"

  name                   = var.project_name
  instance_count         = 3

  ami                    = var.ec2_ami
  instance_type          = var.instance_type
  key_name               = var.instance_key_name
  monitoring             = true
  #vpc_security_group_ids = [${aws_security_group.lc_security_group.id}]
  subnet_id              = lookup(data.terraform_remote_state.subnet.outputs, "${var.bu_name}_services_subnet_id")

  tags = var.default_tags
}
