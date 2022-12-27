#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

apt-get update

apt-get install nginx

rm -rf /etc/nginx/sites-available/default

touch /etc/nginx/sites-available/default

# Configure /etc/nginx/sites-available/default
echo "server {" > /etc/nginx/sites-available/default
echo " " >> /etc/nginx/sites-available/default
echo "    listen 80 default_server;" >> /etc/nginx/sites-available/default
echo "    listen [::]:80 default_server;" >> /etc/nginx/sites-available/default
echo "    root /var/www/html;" >> /etc/nginx/sites-available/default
echo "    index index.html index.htm index.nginx-debian.html;" >> /etc/nginx/sites-available/default
echo "    server_name localhost;" >> /etc/nginx/sites-available/default
echo "    location / {" >> /etc/nginx/sites-available/default
echo "        proxy_pass http://localhost:8080/guacamole/;" >> /etc/nginx/sites-available/default
echo "        proxy_buffering off;" >> /etc/nginx/sites-available/default
echo "        proxy_http_version 1.1;" >> /etc/nginx/sites-available/default
echo "        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;" >> /etc/nginx/sites-available/default
echo "        proxy_set_header Upgrade \$http_upgrade;" >> /etc/nginx/sites-available/default
echo "        proxy_set_header Connection \$http_connection;" >> /etc/nginx/sites-available/default
echo "        access_log off;" >> /etc/nginx/sites-available/default
echo "    }" >> /etc/nginx/sites-available/default
echo " " >> /etc/nginx/sites-available/default
echo "}" >> /etc/nginx/sites-available/default