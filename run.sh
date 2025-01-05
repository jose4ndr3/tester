#! /bin/bash

echo "HOSTNAME"
hostnamectl

echo "INTERFACE RED"
ifconfig | grep inet

sh /data/tester/ping.sh