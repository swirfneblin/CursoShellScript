#!/bin/bash

clear
read -p "Informe p valor 1: " val1
read -p "Informe p valor 2: " val2
echo

if [ ! "$val1" -o ! "$val2" ]
then
	echo "Os dois valores devem ser informados"
	exit 1
fi

echo "Escolha uma operacao:"
echo "1 = SOMA"
echo "2 = SUBTRACAO"
echo "3 = MULTIPLICACAO"
echo "4 = DIVISAO"
echo "Q = SAIR"
read -n1 operacao

echo
echo "Opcao: $operacao"
echo


case "$operacao" in
	1)
		result=$(expr $val1 + $val2)
		echo "$val1 + $val2 = $result"
		;;
	
	2)
		result=$(expr $val1 - $val2)
		echo "$val1 - $val2 = $result"
		;;
	3)
		if [ "$val1" -eq 0 -o "$val2" -eq 0 ]
		then
			echo "Para multiplicacao os valores devem ser maiores que 0"
			exit 2
		fi

		result=$(expr $val1 \* $val2)
		echo "$val1 * $val2 = $result"
		;;

	4)
		result=$(expr $val1 % $val2)
		echo "$val1 % $val2 = $result"
		;;
	*)
		echo "Saindo.."
		;;
esac
