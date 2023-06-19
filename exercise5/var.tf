variable "Region" {
  default = "us-east-2"
}

variable "ZONE1" {
  default = "us-east-2a"
}

variable "AMIS" {
  type = map(any)
  default = {
    us-east-2 = "ami-0e820afa569e84cc1"
    us-east-1 = "ami-022e1a32d3f742bd8"
  }
}
variable "InstanceType" {
  default = "t2.micro"
}

variable "SecurityGroupID" {
  default = "sg-003efdcbd27719442"
}

variable "KeyName" {
  default = "terraform-key"
}

variable "Name" {
  default = "terraform-ec2"
}

variable "Project" {
  default = "Terraform"
}

variable "User" {
  default = "ec2-user"
}

