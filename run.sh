#!/bin/sh
echo "---starting tinyproxy"
tinyproxy -c /etc/openvpn/tinyproxy.conf 
echo "---starting openvpn with config $1"
openvpn $1 
