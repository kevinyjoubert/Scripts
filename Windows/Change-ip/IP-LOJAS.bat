cls
@echo off
color a
set /p loja= DIGITE O NUMERO DA LOJA PARA CONFIGURAR A REDE: 

if "%loja%" equ "51" (goto:51)
if "%loja%" equ "52" (goto:52)
if "%loja%" equ "56" (goto:56)
if "%loja%" equ "84" (goto:84)
if "%loja%" equ "101" (goto:101)
if "%loja%" equ "105" (goto:105)
if "%loja%" equ "108" (goto:108)
if "%loja%" equ "111" (goto:111)
if "%loja%" equ "117" (goto:117)
if "%loja%" equ "140" (goto:140)
if "%loja%" equ "158" (goto:158)
if "%loja%" equ "176" (goto:176)
if "%loja%" equ "194" (goto:194)



:51

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:52

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:56

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:84

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:101

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:105

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:108

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:111

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:117

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:140

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:158

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:176

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config



:194

cls

@echo off
set /p finalip= "Digite um numero de 97 a 99: "
@echo.
@echo.

@echo Configurando o acesso..
@echo.
@echo.

@echo off
ping -n 2 0 >NUL

@echo on
@echo Aguarde..

set rangeip=60.136

set interface=Wi-Fi
set ip=10.%rangeip%.%finalip%
set mask=255.255.255.0
set gateway=10.%rangeip%.1
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)

goto:Proxy-config




:Proxy-config

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d proxy-lojas.corp.assai.com.br:3128 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;10.*;172.16.*;192.168.*;atena;webponte;transfer;pap102c;*.barcelona.com;*.gpabr.com;*.cbd.root.gpa;*.cbdnet.com.br;*.corp.assai.com.br;*.assaiatacadista.com.br;*.matriz.corp.assaiatacadista.com.br;*.viavarejo.com.br;timgpa;*.corp.comprebem.com.br;*.multivarejogpa.com.br;comprebem.bluesoft.com.br;bi.bluesoft.com.br;cdn.bluesoft.com.br;request-timer.bluesoft.com.br;xmpp.bluesoft.com.br" /f

goto:Sucess



:Sucess

cls

@echo on
@echo.
@echo ACESSO CONFIGURADO, TESTE A CONEXAO

@echo off
ping -n 10 0 >NUL
exit