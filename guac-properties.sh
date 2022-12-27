#!/bin/bash

# Check if user is root or sudo
if ! [ $( id -u ) = 0 ]; then
    echo "Please run this script as sudo or root" 1>&2
    exit 1
fi

# Initialize variable values
ldap-hostname-variable="dc2-server.vv.local"
ldap-port-variable="389"
ldap-encryption-method-variable="none"
ldap-search-bind-dn-variable="cn=Tech Account,ou=Technology,dc=vv,dc=local"
ldap-search-bind-password-variable="matt"
ldap-user-base-dn-variable="dc=vv,dc=local"
ldap-username-attribute-variable="sAMAccountName"
ldap-group-base-dn-variable="dc=vv,dc=local"
ldap-group-name-attribute-variable="cn"
ldap-user-search-filter-variable="(objectClass=*)"
enable-clipboard-integration-variable="true"

echo "ldap-hostname: ${ldap-hostname-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-port: ${ldap-port-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-encryption-method: ${ldap-encryption-method-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-search-bind-dn: ${ldap-search-bind-dn-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-search-bind-password: ${ldap-search-bind-password-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-user-base-dn: ${ldap-user-base-dn-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-username-attribute: ${ldap-username-attribute-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-group-base-dn: ${ldap-group-base-dn-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-group-name-attribute: ${ldap-group-name-attribute-variable}" >> /etc/guacamole/guacamole.properties
echo "ldap-user-search-filter: ${ldap-user-search-filter-variable}" >> /etc/guacamole/guacamole.properties
echo "enable-clipboard-integration: ${enable-clipboard-integration-variable}" >> /etc/guacamole/guacamole.properties

echo "Done setting up Apache Guacamole Properties!"