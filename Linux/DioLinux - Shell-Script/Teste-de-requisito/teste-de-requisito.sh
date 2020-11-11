#!/bin/bash

#teste de requisito, serve para validar se algum arquivo ou programa existe


# testa se o pacote wget esta instalado

if [[ ! -x `which wget` ]]
    then
        echo "[INFO] wget não está instalado, o mesmo será instalado!"
        sudo apt install wget -y
    else
        echo "[INFO] o wget já está instalado!"
    fi

#testa se tem conexao de internet

if ! ping -c 1 8.8.8.8 -q &> /dev/null
    then
        echo
        echo "[ERROR] - Seu computador está sem conexão com a internet, verifique!"
        echo
        exit 1
    else
        echo
        echo "[INFO] - Conexao com a internet funcionando"
        echo
fi
