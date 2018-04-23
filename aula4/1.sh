#!/bin/bash

DATA=$(date +%I)
PERIOD=$(date +%p)

if [ "$DATA" -ge 06 -a "$DATA" -le 12 ]
then
	echo "Bom Dia!"
elif [ "$DATA" -gt 12  -a "$DATA" -le 18 ]
then
	echo "Boa Tarde!"
else
	echo "Boa Noite!"
fi

echo "A hora atual eh: $DATA $PERIOD"
