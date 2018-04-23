#!/bin/bash

ls /home/$1 > /dev/null 2>&1 || { echo "usuario inexistente" ; exit 1; }

echo "Relatorio do usuario: $(grep $1 /etc/passwd |cut -d":" -f3) "
echo "Usuario: $(grep swirfneblin /etc/passwd |cut -d: -f5 |tr -d ,)"
