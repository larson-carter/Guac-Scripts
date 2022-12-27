#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

chmod a+x ./ufw-firewall.sh

chmod a+x ./haproxy.sh

chmod a+x ./guac.sh

chmod a+x ./guac-properties.sh

chmod a+x ./nginx.sh

chmod a+x ./branding.sh

chmod a+x ./restart-all-services.sh