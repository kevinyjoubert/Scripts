#!/bin/bash

#  INSTALANDO PROGRAMAS AUTOMATICAMENTE

clear
echo
echo "		| --- Script para instalacao automatica de programas favoritos --- |"
echo

sleep 3
clear

echo
echo "		| ---  Atualizando o sistema --- |"
echo

if ! sudo apt update && sudo apt upgrade
then
	echo "Nao foi possivel atualizar o sistema, verifique a possivel causa, isoladamente"

exit 1
fi

sleep 5

clear

echo
echo "		| --- Atualizando pacotes ja existentes --- |"
echo

if ! sudo apt dist-upgrade -y
then
	echo "Nao foi possivel atualizar os pacotes existentes, verifique a possivel causa, isoladamente"

exit 1
fi

sleep 5

clear


echo
echo "		| --- Preparando o Google Chrome para instalacao --- |"
echo
echo "		       | --- Baixando o arquivo do Chrome --- |"
echo

if ! wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
then
	echo "Falha ao baixar o arquivo .deb do Chrome, favor verificar o link acima"
	rm -rf google-chrome-stable_current_amd64.deb
exit 1
fi

sleep 3

clear

echo
echo "		| --- Instalando o Google Chrome --- |"
echo

if ! sudo dpkg -i google-chrome-stable_current_amd64.deb
then
	echo "Falha ao fazer a instalacao, favor verificar!"

exit 1
fi

echo
echo "		| --- Removendo o pacote .deb do chrome --- |"
echo
rm -rf google-chrome-stable_current_amd64.deb

sleep 3

clear

echo
echo "		| --- Preparando o Edge para instalacao --- |"
echo
echo "		| --- Baixando/instalando respositorios --- |"
echo


if ! curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
then
	echo "Arquivo .gpg econtra-se com erro, favor verificar!"
exit 1
fi

if ! sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
then
	echo "Instalacao do arquivo .gpg com erro, favor verificar!"
exit 1
fi

if ! sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
then
	echo "Falha ao adicionar pacete no repositorio"
exit 1
fi

sudo rm -rf microsoft.gpg

sleep 3

clear

echo
echo "		| --- Instalando o Edge --- |"
echo

if ! sudo apt update
then
	echo "Verifique os pacotes ou repositorios!"
exit 1
fi

if ! sudo apt install microsoft-edge-dev -y
then
	echo "Falha na instalacao, favor verificar!"
exit 1
fi

sleep 3

clear

echo
echo "		| --- Preparando para instalar o Discord --- |"
echo
echo "		      | --- Baixando o pacote .deb ---|"
echo

if ! wget -O discord.deb "https://discordapp.com/api/download?platform=linux&format=deb"
then
	echo "Falha ao baixar o pacote .deb"
	rm -rf discord.deb
exit 1
fi

sleep 3

clear

echo
echo "		| --- Instalando o Discord --- |"
echo

if ! sudo dpkg -i discord.deb
then
	echo "Falha ao instalar o pacote!"
exit 1
fi

sleep 2

echo
echo "		| --- Removendo o pacote .deb --- |"
echo

sudo rm -rf discord.deb

sleep 2

clear

echo
echo "		| --- Preparando para instalar o grub-customizer --- |"
echo


if ! sudo apt upgrade
then
	echo "Falha ao atualizar o sistema, verificar!"
exit 1
fi

sleep 3

clear

echo
echo "		| --- Instalando o grub-customizer --- |"
echo

if ! sudo apt install grub-customizer
then
	echo "Falha ao instalar o grub-customizer, verificar"
exit 1
fi

sleep 3

clear

echo
echo "		| --- Preparando a instalacao do gnome-tweak-tool --- |"
echo
echo "		         | --- Baixando o arquivo .dev --- |"
echo

if ! wget https://launchpad.net/ubuntu/+archive/primary/+files/gnome-tweak-tool_3.26.2.1-1ubuntu1_all.deb -O gnome-tweak-tool.deb
then
	echo "Falha ao baixar o arquivo .deb"
	rm -rf gnome-tweak-tool.deb
exit 1
fi

sleep 3

clear

echo
echo "		| --- Instalando o gnome-tweak-tool --- |"
echo

if ! sudo dpkg -i gnome-tweak-tool.deb
then
	echo "Falha ao instalar o gnome-tweak-tool, verificar"
exit 1
fi

sudo apt install -f

echo
echo "		| --- Removendo o pacote .deb --- |"
echo

sudo rm -rf gnome-tweak-tool.deb

sleep 3

clear

echo
echo "		| --- Preparando para instalacao do Weechat --- |"
echo

if ! sudo apt-get install dirmngr gpg-agent apt-transport-https
then
	echo "Falha em instalar o agent-transport, verificar!"
exit 1
fi

echo
echo "		| --- Adicionando o repositorio --- |"
echo

if ! sudo apt-key adv --keyserver hkps://keys.openpgp.org --recv-keys 11E9DE8848F2B65222AA75B8D1820DB22A11534E
then
	echo "Falha ao adicionar o repositorio, verificar"
exit 1
fi

if ! sudo apt update
then
	echo "Falha ao atualizar o sistema, favor verificar"
exit 1
fi

sleep 3

clear

echo
echo "		| --- Instalando o Weechat --- |"
echo

if ! sudo apt-get install weechat-curses weechat-plugins weechat-python weechat-perl
then
	echo "Falha ao instalar o Weechat, favor verificar"
exit 1
fi

sleep 3

clear

echo
echo "		| --- Configurando o Weechat --- |"
echo

cd ~/.weechat

echo
echo " | --- No proximo passo irá abrir uma nova janela, edite as seguintes linhas abaixo --- |"
echo " | --- Lembrando que esta no final do documento dentro de [server_default]          --- |"
echo
echo
echo "addresses = “irc.freenode.net”"
echo "autoconnect = on"
echo "autojoin = “#slackware-br,#archlinux-br,#kde-br,#fedora-br,#vivaolinux,#linuxlife"
echo "nicks = “seu nick”"
echo "password = “coloque aqui a sua senha”"
echo "realname = “seu nome”"
echo "username = “seu nick”"
echo
echo
echo "Edite somente as linhas acima"
echo
echo "Aperte ENTER para abrir o arquivo e comecar a editar"
read ''

gedit irc.conf

echo "Após editar o arquivo e salvar, aperte ENTER para continuar.."
read ''

clear

echo
echo "		| --- Configurando o buffers.pl do Weechat --- |"
echo

cd perl/autoload

echo
echo "		| --- Extraindo conteudo e criando na pasta perl/autoload --- |"
echo

if ! wget -O buffers.pl "https://weechat.org/files/scripts/buffers.pl"
then
	echo "Link do buffers nao encontrado, favor verificar!"
	rm -rf buffers.pl
exit 1
fi

sleep 3

clear

echo
echo "		| --- Instalando cmatrix e fortunes brasil no bash --- |"
echo

sudo apt install cmatrix

sudo apt install fortunes-br

sleep 3

clear

echo
echo "		| --- Atualizando o sistema e removendo antigos pacotes --- |"
echo

sudo apt update && sudo apt upgrade && sudo apt dist-upgrade && sudo apt autoremove && sudo apt autoclean && sudo apt clean

echo
echo "		| --- Instalação dos seguintes programas --- |"
echo
echo "		| - Chrome"
echo "		| - Edge"
echo "		| - Discord"
echo "		| - Grub-customizer"
echo "		| - Gnome-tweak-tool"
echo "		| - Weechat"
echo "		| - Cmatrix"
echo "		| - Fortunes brasil"
echo
echo "Concluido"
echo "Pressione ENTER para finalizar o script"
read ''

clear
