#!/bin/bash


# CORES DE ALERTAS
COR_VERMELHA='\e[1;91m'
COR_AMARELA='\e[1;93m'
COR_VERDE='\e[1;92m'
COR_ORIGINAL='\e[0m'

clear

echo 
echo "  | -- CONSERTANDO A DATA E HORA DO KALI LINUX -- |"
echo 

if ! sudo apt install chrony
then
    echo -e "${COR_VERMELHA} [ERROR]- Problema ao instalar o chrony, verificar! ${COR_ORIGINAL}"
exit 1
fi

