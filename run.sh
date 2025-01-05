#! /bin/bash

curr_dir=$(pwd)

echo "HOSTNAME"
hostnamectl | grep 'Static hostname'

echo "INTERFACE RED"
ifconfig | grep -i inet | grep broadcast

sh $curr_dir/ping.sh