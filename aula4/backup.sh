#!/bin/bash

DIRDEST=$HOME/Backup

if [ ! -d $DIRDEST ]
then
	echo "Criando diretorio $DIRDEST..."
	mkdir -p $DIRDEST
fi

DAYS7=$(find $DIRDEST -ctime -7 -name backup_home\*tgz)

if [ "$DAYS7" ]
then
	echo "Ja foi gerado backup no diretorio $HOME nos ultimos 7 dias"
	echo -n "Deseja continuar? (N/s): "
	read -n1 CONT
	echo

	if [ "$CONT" = N -o "$CONT" = n -o "$CONT" = "" ]
	then
		echo "Backup Abortado"
		exit 1	
	elif [ "$CONT" = S -o "$CONT" = s ]
	then
		echo "Sera criado mais um backup para a mesma semana"
	else
		echo "Opcao Invalida"
		exit 2
	fi
fi

echo "Criando backup"
ARQ="backup_home_$(date +%Y%m%d%H%M).tgz"
tar zcvpf $DIRDEST/$ARQ --absolute-names  "$HOME"/Documents/* > /dev/null

echo
echo "O backup de nome \""$ARQ"\" foi criado em $DIRDEST"
echo 
echo "O backup foi concluido!" 
