#!/bin/bash

usuario=$(grep "$1" /etc/passwd)

if [ -n "$usuario" ]
then
	echo "O usuario existe"
	if [ "$var1" = swirfneblin ]
	then
		echo " OK"
	fi	
else
	echo "O usuario nao existe"
fi	
	
