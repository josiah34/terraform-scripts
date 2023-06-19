#!/bin/bash
yum install wget unzip httpd -y
systemctl start httpd
systemctl enable httpd
wget -O moso_interior.zip https://www.tooplate.com/download/2133_moso_interior
unzip -o moso_interior
rm -rf /var/www/html/index.html
cp -r 2133_moso_interior/* /var/www/html/
systemctl restart httpd

