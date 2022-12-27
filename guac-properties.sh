#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

echo "
ldap-hostname: dc2-server.vv.local
ldap-port: 389
ldap-encryption-method: none
ldap-search-bind-dn: cn=Tech Account,ou=Technology,dc=vv,dc=local
ldap-search-bind-password: matt
ldap-user-base-dn: dc=vv,dc=local
ldap-username-attribute: sAMAccountName
ldap-group-base-dn: dc=vv,dc=local
ldap-group-name-attribute: cn
ldap-user-search-filter: (objectClass=*)

enable-clipboard-integration: true
" >> /etc/guacamole/guacamole.properties

echo "Done setting up Apache Guacamole Properties!"