#!/bin/bash

TIME=5

if [ $# -eq 0 ]
then
	echo Favor informar um processo
	echo "./processos.sh <processos>"
	exit 1
fi

while true
do
	if ps aux |grep $1 |grep -v grep |grep -v $0 > /dev/null
	then
		sleep $TIME
	else
		echo "Atencao o processo $1 esta rodando"
		sleep $TIME
	fi
done
