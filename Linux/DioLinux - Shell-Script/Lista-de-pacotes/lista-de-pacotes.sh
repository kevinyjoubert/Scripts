#!/bin/bash

PROGRAMAS_A_SER_INSTALADOS=(
    zsh
    github-desktop
    telegram-desktop
    transmission
)

instalar_pacotes () {
    for programa in ${PROGRAMAS_A_SER_INSTALADOS[@]};
        do
            echo
            echo "Instalando o $programa"
            echo
            sudo apt install $programa -y
        done
}

instalar_pacotes