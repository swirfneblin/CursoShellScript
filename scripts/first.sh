#!/bin/bash

DATAHORA=$(date +%H:%M)
clear
echo "=== meu primeiro script  =="
echo ""
echo -n  "Exibir hora atual: $DATAHORA"
echo "Listagem de arquivos"
echo "=========================="
sort envlist.txt | tr '@' '\n'
