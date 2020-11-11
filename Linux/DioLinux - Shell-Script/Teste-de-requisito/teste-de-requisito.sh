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

