resource "aws_instance" "ec2" {
  ami                    = var.AMIS[var.Region]
  availability_zone      = var.ZONE1
  instance_type          = var.InstanceType
  key_name               = var.KeyName
  vpc_security_group_ids = [var.SecurityGroupID]
  tags = {
    Name    = var.Name
    Project = var.Project
  }
}