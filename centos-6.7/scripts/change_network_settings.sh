#!/bin/sh
# Change network config for specific interface
# Author: Gardar Thorsteinsson
# 
# usage: 
# change_network_config.sh eth0 192.168.5.20/24 192.168.5.1 "8.8.8.8 8.4.4.4"
#
# Load input arguments as variables
#iface=$1
#ip_cidr=$2
#gateway=$3
#nameservers=$4
#domain=$5

# Change network settings
nmcli con mod ${e_iface} ipv4.method manual ipv4.addresses ${e_ip_cidr} ipv4.gateway "${e_gateway}" ipv4.dns ${e_nameservers}
echo ${e_ip_cidr} > /tmp/test.txt
echo ${e_iface} >> /tmp/test.txt
echo ${e_gateway} >> /tmp/test.txt
echo ${e_nameservers} >> /tmp/test.txt
echo ${e_domain} >> /tmp/test.txt

# Restart network
#service network restart
