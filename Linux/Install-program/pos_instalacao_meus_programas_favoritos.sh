#!/bin/bash
#
# pos_instalacao_meus_programas_favoritos.sh - Faz a instalação dos programas 
# que costumo utilizar no Linux
#
# Github:       https://github.com/kevinyjoubert
# Linkedin:     https://www.linkedin.com/in/keviny-joubert-2992b8b1/
# Autor:        Keviny Joubert
#
# -------------------------------------------------------------------------------
#
# -O QUE O SCRIPT FAZ?
#
#   Esse script instala os programas que utilizo após a formatação, faz upgrade
#  e limpeza do sistema. 
#
#
# -COMO USAR?
#
#   Abra o terminal aonde se encontra o arquivo e execute o comando abaixo:
#
#      $  ./pos_instalação_meus_programas_favoritos.sh
#
#
# -NOTA:
#
#   O Script foi pensado para ter uma boa organização, fácil manutenção e para
#  quem queira editar ao seu uso!
#
# -------------------------------------------------------------------------------
#
# -Changelog:
#
#   v1.0 DATA, Keviny Joubert:
#       - Primeira versão com poucos programas
#
# -------------------------------------------------------------------------------

DIRETORIO_PROGRAMAS_BAIXADOS=$HOME/Downloads/Programas
COR_VERMELHA='\e[1;91m'
COR_AMARELA='\e[1;93m'
COR_VERDE='\e[1;92m'
COR_ORIGINAL='\e[0m'


PACOTES_DEB=(
    https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
)

PACOTES_WGET_DEB_O=(
    "https://discordapp.com/api/download?platform=linux&format=deb"
)
NOMES_DOS_PACOTES_WGET_DEB_O=(
    discord.deb
)

PACOTES_CURL=(
    https://packages.microsoft.com/keys/microsoft.asc # | gpg --dearmor > microsoft.gpg
)

PACOTES_WGET_qO=(
    https://packagecloud.io/shiftkey/desktop/gpgkey
    https://packages.microsoft.com/keys/microsoft.asc # | gpg --dearmor > packages.microsoft.gpg
)

PACOTES_SH=(
    'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftky-desktop.list'
    'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
    'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
)

ADICIONANDO_REPOSITORIOS=(

)

ACOES_SUDO_TEE=(
    tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc # &> /dev/null
)

ACOES_INSTALL_O=(
    packages.microsoft.gpg /etc/apt/trusted.gpg.d/
)

PROGRAMAS_VIA_APT=(
    microsoft-edge-dev
    grub-customizer
    cmatrix
    fortunes-br
    virtualbox virtualbox-ext-pack
    software-properties-common apt-transport-https #vscode
    code #vscode
    telegram-desktop
    transmission
    github-desktop
)



baixando_e_instalando_pacotes_deb () {
    for URL in ${PACOTES_DEB[@]}
        do
            url_extraida=$(echo ${URL##*/} | sed 's/-/_/g' | cut -d _ -f 1)
            
            if ! dpkg -l | grep -q $url_extraida
                then
                    echo -e "${COR_AMARELA}[INSTALANDO] - Instalando o programa $url_extraida. ${COR_ORIGINAL}"
                    wget -c "$URL" -P "$DIRETORIO_PROGRAMAS_BAIXADOS" &> /dev/null
                    sudo dpkg -i $DIRETORIO_PROGRAMAS_BAIXADOS/${URL##*/} &> /dev/nul
                else
                    echo
                    echo -e "${COR_VERDE}[DONE] - O programa $url_extraida já está instalado.${COR_ORIGINAL}"
                    echo
                fi
        done

        if ! sudo apt -f install -y &> /dev/null
            then
                echo -e "${COR_VERMELHA}[ERROR] - Problema ao instalar as dependências (apt -f install)${COR_ORIGINAL}"
                exit 1
            fi
}

baixando_e_instalando_pacotes_wget_deb_O () {
    
    for url_pacote_deb_o in ${PACOTES_WGET_DEB_O[@]}
        do
            for nomes_deb in ${NOMES_DOS_PACOTES_WGET_DEB_O[@]}
                do
                    pacote_instalado=$(echo ${nomes_deb} | cut -d . -f 1)

                    if ! dpkg -l | grep -q $pacote_instalado
                        then
                            wget -O ${nomes_deb} ${url_pacote_deb_o} &> /dev/null
                        else
                            echo -e "${COR_VERDE}[DONE] - O programa ${pacote_instalado} já está instalado${COR_ORIGINAL}"
                        fi
                done
        done
}

baixando_e_instalando_pacotes_curl () {
    
    if ! dpkg -l | grep -q curl
        then
            echo -e "${COR_AMARELA}[INSTALANDO] - Instalando o Curl${COR_ORIGINAL}"
            sudo apt install curl -y &> /dev/null
            echo -e "${COR_VERDE}[DONE] - O programa curl foi instalado${COR_ORIGINAL}"
        else
            echo -e "${COR_VERDE}[DONE] - O programa curl já está instalado${COR_ORIGINAL}"
        fi

    for url_curl in ${PACOTES_CURL[@]}
        do
            if ! curl ${url_curl} &> /dev/null
                then
                    echo "${COR_VERMELHA}[ERROR] - Verifique a URL do Curl (${url_curl})${COR_ORGINAL}"
                else
                    echo -e "${COR_VERDE}[DONE] - URL do Curl adicionado!${COR_ORIGINAL}"
                fi
        done
                    
}
















# baixando_e_instalando_pacotes_deb
# baixando_e_instalando_pacotes_wget_deb_O
baixando_e_instalando_pacotes_curl