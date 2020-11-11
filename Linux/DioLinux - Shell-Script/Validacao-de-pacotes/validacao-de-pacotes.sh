#!/bin/bash

PROGRAMAS_A_SER_INSTALADOS=(
    zsh
    github-desktop
    telegram-desktop
    transmission
)

instalar_pacotes () {
    for programa in ${PROGRAMAS_A_SER_INSTALADOS[@]}
        do
            if ! dpkg -l | grep -q $programa
                then
                    echo
                    echo "Instalando o $programa"
                    echo
                    sudo apt install $programa -y
                else
                    echo "[INFO] - O programa $programa já está instalado!"
                fi
        done
}

instalar_pacotes