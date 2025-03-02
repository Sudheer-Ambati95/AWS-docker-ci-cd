#!/bin/bash

# Update system
sudo apt update && sudo apt upgrade -y

# Install Docker
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker

# Install Terraform
sudo apt install -y terraform

# Install Ansible
sudo apt install -y ansible
