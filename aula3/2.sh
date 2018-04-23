#!/bin/bash

clear
echo "==============================================="
echo "Relatório da Máquina: $(uname -sv)"
echo "Data/Hora: $(date)"
echo "==============================================="
echo "Máquina Ativa desde: $(uptime -p)"
echo "Versão do Kernel: $(uname -r)"
echo "CPUs:"
echo "Quantidade de CPUs/Core: $(cat /proc/cpuinfo |grep "model name" |wc -l)"
echo "Modelo da CPU: $(cat /proc/cpuinfo |grep "model name" |head -n1 |cut -c14-)"
echo "Partições: "
echo ""
echo "$(df -h |egrep -v '(tmpfs|udev)')"
