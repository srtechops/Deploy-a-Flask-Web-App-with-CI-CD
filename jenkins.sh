#!/bin/bash

# Update all system packages
yum update -y

# Add Jenkins repository to yum
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import Jenkins GPG key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Upgrade packages
yum upgrade -y

# Install Java 17 (required by Jenkins)
yum install java-17-amazon-corretto -y

# Install Jenkins
yum install jenkins -y

# Enable and start Jenkins service
systemctl enable jenkins
systemctl start jenkins

# Install Docker
yum install docker -y

# Start Docker service
systemctl start docker

# Add Jenkins user to Docker group to allow Docker command usage
gpasswd -a jenkins docker

# Install Git
yum install git -y

# Install pip for Python 3
yum install python3-pip -y

# Install Flask and Pytest using pip
pip3 install flask pytest

# Reboot the instance to apply all changes (e.g. group memberships)
reboot
