#!/bin/bash

DIRETORIO_DOWNLOAD_PROGRAMAS=$HOME/Downloads
URL_WGET_BAIXANDO_PACOTES=(
    https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
)

baixando_URLs () {
    for URL in ${URL_WGET_BAIXANDO_PACOTES[@]}
        do
            url_extraida=$(echo ${URL##*/} | sed 's/-/_/g' | cut -d _ -f 1) #url extraida para verificar se existe o programa instalado
            
            if ! dpkg -l | grep -q $url_extraida
                then
                    wget -c "$URL" -P "$DIRETORIO_DOWNLOAD_PROGRAMAS"
                    sudo dpkg -i $DIRETORIO_DOWNLOAD_PROGRAMAS/${URL##*/}
                else
                    echo
                    echo "[INFO] O programa $url_extraida já está instalado."
                    echo
                fi
        done

        sudo apt -f install -y
}

baixando_URLs
