provider "aws" {
  region = "us-east-2"
}


resource "aws_instance" "ec2" {
  ami                    = "ami-0e820afa569e84cc1"
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  vpc_security_group_ids = ["sg-0bddc005a474fe112"]
  tags = {
    Name = "terraform-ec2"
    Project = "Terraform"
  }
}