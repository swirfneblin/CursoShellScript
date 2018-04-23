#!/bin/bash

case "$1" in
	[0-9])
		echo "o parametro eh um numero"
		;; 
	[A-Z])
		echo "o parametro eh uma letra maiuscula"
		;;
	[a-z])
		echo "o parametro eh uma letra minuscula"
		;;
	*)
		echo "o paramtro eh um caracter"
		;;
esac
