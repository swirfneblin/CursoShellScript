#!/bin/bash


until ps aux |grep firefox |grep -v grep > /dev/null 
do
	echo Inicie o Firefox
	sleep 3
	echo 	
done

echo firefox Iniciado
echo PID: $(pgrep firefox)
