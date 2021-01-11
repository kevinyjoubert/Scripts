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


## CONSERTANDO A DATA E HORA
clear

echo 
echo "  | -- CONSERTANDO A DATA E HORA DO KALI LINUX -- |"
echo 

if ! sudo apt install chrony
    then
        echo -e "${COR_VERMELHA} [ERROR] - Problema ao instalar o chrony, verificar! ${COR_ORIGINAL}"
    else
        echo -e "${COR_VERDE}[DONE] - chrony instalado! ${COR_ORIGINAL}"
    exit 1
    fi

clear

echo
echo -e "${COR_AMARELA}| -- CONFIGURANDO O CHRONY -- | ${COR_ORIGINAL}"
echo

systemctl enable --now chrony

systemctl status chrony

chronyc activity

chronyc sources

chronyc sourcestats

chronyc tracking

clear

echo
echo -e "${COR_AMARELA}[ALERT] - SERA NECESSARIO ACRESCENTAR ALGUMAS LINHAS APOS ABRIR O EDITOR ${COR_ORIGINAL}"
echo

echo -e "${COR_VERMELHA}Digite abaixo da linha escrita -> 'information about usable directives.'"
echo

echo
echo "server 0.br.pool.ntp.org"
echo "server 1.br.pool.ntp.org"
echo "server 2.br.pool.ntp.org"
echo "server 3.br.pool.ntp.org"
echo

sudo gedit /etc/chrony/chrony.conf

echo
echo "Aperte ENTER para continuar:"
read ''

clear

echo
echo -e "${COR_AMARELA}| -- REINICIANDO/FINALIZANDO O CHRONY -- | ${COR_ORIGINAL}"
echo

sudo systemctl restart chrony

chrony sources

chronyc tracking

timedatectl

clear

echo
echo -e "${COR_VERDE}| -- DATA E HORA SINCRONIZADOS E AUTOMATIZADO -- | ${COR_ORIGINAL}"
echo

sleep 5
clear