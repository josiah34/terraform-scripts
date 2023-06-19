resource "aws_key_pair" "key" {
  key_name   = "terra-key"
  public_key = file("terra-key.pub")
}

resource "aws_instance" "ec2-provider" {
  ami                    = var.AMIS[var.Region]
  availability_zone      = var.ZONE1
  instance_type          = var.InstanceType
  key_name               = aws_key_pair.key.key_name
  vpc_security_group_ids = [var.SecurityGroupID]
  tags = {
    Name    = var.Name
    Project = var.Project
  }
  provisioner "file" {
    source      = "web.sh"
    destination = "/tmp/web.sh"
  }
  provisioner "remote-exec" {
    inline = [
      "chmod u+x /tmp/web.sh",
      "sudo /tmp/web.sh"
    ]
  }
  connection {
    user        = var.User
    private_key = file("terra-key")
    host        = self.public_ip
  }
}


output "public_ip" {
  value = aws_instance.ec2-provider.public_ip
}

output "private_ip" {
  value = aws_instance.ec2-provider.private_ip
}