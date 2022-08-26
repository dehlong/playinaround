#!/bin/bash

if [ "$1" == "" ]; then
echo "You forgot the IP address."
echo "Syntax: ./ipsweeper 192.168.19"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi
