#! /bin/bash

curr_dir=$(pwd)

echo "HOSTNAME"
hostnamectl

echo "INTERFACE RED"
ifconfig | grep inet

sh $curr_dir/ping.sh