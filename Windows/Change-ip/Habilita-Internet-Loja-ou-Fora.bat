@echo off
color a
cls

@echo Programa para Habilitar internet no Assai ou Fora do Assai
@echo off
ping -n 1 0 >NUL
@echo.
@echo.

@echo off
set /p opcao= "Digite a opcao desejada para configuracao automatica (a = acesso no Assai, f = acesso fora do Assai): "

if "%opcao%" equ "a" (goto:loja)
if "%opcao%" equ "A" (goto:loja)
if "%opcao%" equ "f" (goto:fora)
if "%opcao%" equ "F" (goto:fora)

:loja

@echo on
@echo Configurando o acesso para uso em loja
@echo.
@echo.

@echo off
ping -n 1 0 >NUL

@echo on
@echo Aguarde....

@echo off

netsh interface ip set address name="Wi-Fi" dhcp

netsh interface ipv4 add dnsserver "Wi-Fi" address=192.168.250.37 index=1
netsh interface ipv4 add dnsserver "Wi-Fi" address=192.168.250.38 index=2

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d proxy-lojas.corp.assai.com.br:3128 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;10.*;172.16.*;192.168.*;atena;webponte;transfer;pap102c;*.barcelona.com;*.gpabr.com;*.cbd.root.gpa;*.cbdnet.com.br;*.corp.assai.com.br;*.assaiatacadista.com.br;*.matriz.corp.assaiatacadista.com.br;*.viavarejo.com.br;timgpa;*.corp.comprebem.com.br;*.multivarejogpa.com.br;comprebem.bluesoft.com.br;bi.bluesoft.com.br;cdn.bluesoft.com.br;request-timer.bluesoft.com.br;xmpp.bluesoft.com.br" /f

cls
@echo on
@echo.
@echo.
@echo Computador configurado para uso em loja. Favor testar conexao
@echo.
@echo.
@echo Essa tela fechara automaticamente em 10 segundos

@echo off
ping -n 10 0 >NUL
exit


:fora

@echo on
@echo Configurando o acesso para uso fora da loja
@echo.
@echo.

@echo off
ping -n 1 0 >NUL

@echo on
@echo Aguarde....

@echo off

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f

cls
@echo on
@echo.
@echo.
@echo Computador configurado para uso fora da loja. Favor testar conexao
@echo.
@echo.
@echo Essa tela fechara automaticamente em 10 segundos

@echo off
ping -n 10 0 >NUL
exit