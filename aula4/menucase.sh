#!/bin/bash

clear
echo "Escolha uma opcao no MENU"
echo "1 - adicionar"
echo "2 - remover"
echo "3 - alterar"
echo "q - sair"
echo 
read -p "Opcao: " opcao
echo

case $opcao in
	1)
		echo "opcao 1 escolhida"
		sleep 3
		;;
	2)
		echo "opcao 2 escolhida"
		sleep 3
		;;
	3)
		echo "opcao 3 escolhida"
		sleep 3 
		;;
	q)
		echo "Sair..."
		sleep 3
		;;
	*)
		echo "opcao invalida"
		exit 2
		;; 
esac
