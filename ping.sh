#! /bin/bash

for IP in 192.168.100.1 192.168.100.10 8.8.8.8
do
    resultado=$(ping -c 2 $IP | grep 'packet loss' | awk '{print $6}')

    if [ $resultado = "0%" ];then
	    conexion="CONEXION OK"
    else
        conexion="SIN CONEXION"
    fi

    echo $IP" : "$conexion
    
done