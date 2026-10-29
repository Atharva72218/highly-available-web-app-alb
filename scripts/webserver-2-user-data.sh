#!/bin/bash
dnf update -y
dnf install httpd -y
systemctl enable httpd
systemctl start httpd
echo "<h1>Application Load Balancer Demo</h1>" > /var/www/html/index.html
echo "<h2>Server 2</h2>" >> /var/www/html/index.html
echo "<h3>Hostname: $(hostname)</h3>" >> /var/www/html/index.html
