#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

cat guacamole.properties /etc/guacamole/guacamole.properties > /etc/guacamole/guacamole.properties

echo "Done setting up Apache Guacamole Properties!"