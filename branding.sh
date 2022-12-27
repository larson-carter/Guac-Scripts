#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

cp branding.jar /etc/guacamole/extensions/

echo “Branding is now all setup!”