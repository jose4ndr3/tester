#! /bin/bash

for IP in 192.168.100.1 192.168.100.10 8.8.8.8
do
	echo $IP ":"
    ping -c 2 $IP | grep '0% packet loss' | awk '{print $4 $5}'
done