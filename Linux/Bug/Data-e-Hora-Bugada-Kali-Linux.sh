#!/bin/bash


## CORES DE ALERTAS
COR_VERMELHA='\e[1;91m'
COR_AMARELA='\e[1;93m'
COR_VERDE='\e[1;92m'
COR_ORIGINAL='\e[0m'

## START SCRIPT

clear

echo
echo -e "${COR_AMARELA}| -- [ALERT] SCRIPT FEITO PARA CONSERTAR A DATA E HORA DO KALI LINUX, PRIMEIRO IRÁ ATUALIZAR O SISTEMA/KERNEL E DEPOIS CONSERTAR -- |${COR_ORIGINAL}"
echo
echo

sleep 5
clear

## ATUALIZANDO O SISTEMA
if ! sudo apt update && sudo apt upgrade
    then
        echo -e "${COR_VERMELHA}[ERROR] - Verifique os pacotes, erro na atualização do sistema (update && upgrade)${COR_ORIGINAL}"
    else
        echo -e "${COR_VERDE}[DONE] - Dependencias/pacotes do sistema atualizado! ${COR_ORIGINAL}"
    exit 1
    fi


if ! sudo apt dist-upgrade
    then
        echo -e "${COR_VERMELHA}[ERROR] - Problema ao atualizar o kernel do sistema, verifique! (dist-upgrade)${COR_ORIGINAL}"
    else
        echo -e "${COR_VERDE}[DONE] - Kernel do sistema atualizado! ${COR_ORIGINAL}"
    exit 1
    fi

sleep 3
clear

## CONSERTANDO A DATA E HORA
echo 
echo "  | -- CONSERTANDO A DATA E HORA DO KALI LINUX -- |"
echo 

if ! sudo apt install chrony
then
    echo -e "${COR_VERMELHA} [ERROR] - Problema ao instalar o chrony, verificar! ${COR_ORIGINAL}"
exit 1
fi

