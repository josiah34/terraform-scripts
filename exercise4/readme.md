## Overview 


In this exercise I created a terraform script that creates an EC2 instance and uploads a ssh key pair that I will use to run my provisioner script. Once this ec2 instance is created the provisioner script will be uploaded to the machine and executed. 


The script will install and enable apache server. Then it will download and unzip a template website and copy its contents into the default apache directory. After this I will have a running website on the ec2 instance.


EXAMPLE: 

