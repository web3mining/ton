#!/bin/bash

echo "Adnl: "  
read adnl_address

echo "IP: " 
read ip_address_host

cd /root/TON
/root/TON/build/rldp-http-proxy/rldp-http-proxy -p 8080 -a $ip_address_host:3333 -A $adnl_address -L '*' -C /root/TON/build/global.config.json --verbosity 3
