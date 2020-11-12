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

PACOTES_DEB=(
    https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
)

PACOTES_WGET_DEB_O=(
    discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
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
                    wget -c "$URL" -P "$DIRETORIO_PROGRAMAS_BAIXADOS"
                    sudo dpkg -i $DIRETORIO_PROGRAMAS_BAIXADOS/${URL##*/}
                else
                    echo
                    echo "[INFO] O programa $url_extraida já está instalado."
                    echo
                fi
        done

        sudo apt -f install -y
}



















baixando_e_instalando_pacotes_deb