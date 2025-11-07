#!/bin/bash
# Update all packages
dnf update -y
# Install Apache HTTP server
dnf install httpd -y
# Start and enable Apache
systemctl start httpd
systemctl enable httpd
# Create a simple HTML page
echo "<html><h1><center>" > /var/www/html/index.html
echo "I am in the server $(hostname)" >> /var/www/html/index.html
echo "</center></h1></html>" >> /var/www/html/index.html
# End
