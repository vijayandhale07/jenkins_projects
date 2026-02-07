#!/bin/bash

echo "Starting Deployment..."

# Install Apache

sudo yum install -y httpd


# Start and Enable Apache

sudo systemctl start httpd
sudo systemctl enable httpd

echo "<h1>Deployed via Jenkins Pipeline</h1>" | sudo tee /var/www/html/index.html

echo "Deployment Completed successfully"