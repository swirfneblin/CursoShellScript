#!/bin/bash


FILE="/home/swirfneblin/Documents/ShellScript/lshelp.txt"

echo "====== SCRIPT FIND:  ======="

read WORD

echo "O nome $WORD foi localizado: $(grep -i "$WORD" "$FILE")"
echo ""
echo "Script Finalizado"
