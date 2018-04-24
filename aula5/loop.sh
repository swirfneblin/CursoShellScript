#!/bin/bash

echo -e "USUARIO\t\tUID\t\tDIR HOME\t\tNOME"

for item in $(cat /etc/passwd)
do
	USER=$(echo $item |cut -d":" -f1)
	UID_=$(echo $item |cut -d":" -f3)
	DIR=$(echo $item |cut -d":" -f6)
	DESC=$(echo $item |cut -d":" -f5)
	echo -e "$USER\t\t$UID_\t\t$DIR\t\t$DESC"
done
