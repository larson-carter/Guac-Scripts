#!/bin/bash
# Something isn't working? # tail -f /var/log/messages /var/log/syslog /var/log/tomcat*/*.out /var/log/mysql/*.log

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

service tomcat9 restart

/etc/init.d/guacd restart

service nginx restart

echo "Restarted Tomacat, Guacd, and Nginx! Services should be up and running!"