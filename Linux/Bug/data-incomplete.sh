
echo
echo "		| -- Configurando a sincronização da Data e Hora -- |"
echo

sleep 3

if ! sudo apt install chrony
then
	echo "Problema ao baixar/instalar Chrony, verifique!"
exit 1
fi

systemctl enable --now chrony

systemctl status chrony

chronyc activity

chronyc sources

chronyc sourcestats

chronyc tracking

clear

echo
echo "	| -- Ao abrir o editor de texto acrescente o seguinte abaixo na parte escrita -- |"
echo "      # information about usable directives."
echo

echo
echo "server 0.br.pool.ntp.org"
echo "server 1.br.pool.ntp.org"
echo "server 2.br.pool.ntp.org"
echo "server 3.br.pool.ntp.org"
echo
echo
echo "Digite o que esta acima abaixo de #information about usable directives"
echo

sudo gedit /etc/chrony/chrony.conf

echo
read ''

sudo systemctl restart chrony

chrony sources

chronyc tracking

timedatectl

clear

echo
echo "		| -- Data e Hora configurados e agora sincronizaram automatico -- |"
echo

sleep 6

clear 
