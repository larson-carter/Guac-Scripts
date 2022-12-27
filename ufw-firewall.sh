#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

# Update OS
apt update -y

# Install UFW
apt install ufw -y
ufw disable && sudo ufw enable

# Secure UFW Firewall
ufw default deny incoming

# Setup RDP For windows Remote Desktop
ufw allow 3389
ufw enable

echo "UFW Firewall is now installed!"