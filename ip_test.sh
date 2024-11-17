#!/bin/bash
nume=$1
ip=$2
server=$3

nslookup_ip=$(nslookup $nume $server | grep 'Adress: ' | tail -n 1 |awk '{print $2}')
echo "$nslookup_ip"
if [ "$ip" != "$nslookup_ip" ];then
  echo "Bogus IP for $nume in /etc/hosts !"
else
  echo "IP-urile coincid, bravo!"
fi

echo "Buse Valentin Crisitan "
