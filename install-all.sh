#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

./ufw-firewall.sh

./haproxy.sh

./guac.sh

./guac-properties.sh

./nginx.sh

./branding.sh

./restart-all-services.sh

echo "Entire install is complete, please navigate to http://ip-of-server"