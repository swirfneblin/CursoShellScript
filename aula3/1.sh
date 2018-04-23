#!/bin/bash

echo "============= Script para soma de 2 valores =========="

echo ""
read -p "Digite primeiro valor: " v1
read -p "Digite segundo valor: " v2

echo "A soma dos valores $v1 + $v2 = $(expr $v1 + $v2)"

echo ""
echo "============= Script Finalizado  =========="
