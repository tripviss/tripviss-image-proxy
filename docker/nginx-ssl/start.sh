#!/bin/ash
set -e

echo '' > ~/.env

export NAMESERVERS=$(cat /etc/resolv.conf | grep "nameserver" | awk '{print $2}' | tr '\n' ' ')
echo "NAMESERVERS=$NAMESERVERS" >> ~/.env

/usr/local/bin/confd --onetime --confdir /usr/local/etc/confd --backend env

exec nginx -g "daemon off;"
