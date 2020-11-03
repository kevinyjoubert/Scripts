:inicio
cls
@echo Script para Deslogar usuários remotamente
@echo off
ping -n 2 0 >NUL

@echo.
@echo off
set /p choise= Maquina Local ou Rede?(l= local/r= rede)

if "%choise%" equ "l" (goto:local)
if "%choise%" equ "r" (goto:rede)
if "%choise%" equ "0" (goto:enc)


:local
cls
@echo Script para Deslogar usuários remotamente
@echo off
ping -n 2 0 >NUL
@echo.
qwinsta
@echo off
set /p id= Qual ID a ser deslogar?(Somente ID em DISCO, caso não tenha digite r)

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
logoff %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p repeat= Manter, trocar para Rede ou Finalizar?(m= manter, r= trocar para Rede ou f= Finalizar)

if "%repeat%" equ "m" (goto:local)
if "%repeat%" equ "r" (goto:rede)
if "%repeat%" equ "f" (goto:enc)
if "%repeat%" equ "0" (goto:enc)


:rede
cls
@echo Script para Deslogar usuários remotamente
@echo off
ping -n 2 0 >NUL
@echo.
set /p range= Digite o range da loja(xx.xx):

if "%range%" equ "0" (goto:enc)

goto:ip

:ip
cls
@echo Script para Deslogar usuários remotamente
@echo off
ping -n 2 0 >NUL
@echo.
@echo off
set /p ip= Digite o final do IP 10.%range%.:

if "%ip%" equ "0" (goto:enc)
if "%ip%" equ "1" (goto:enc)

goto:id

:id
cls
@echo Script para Deslogar usuários remotamente
@echo off
ping -n 2 0 >NUL
@echo.
@echo on
qwinsta /server:10.%range%.%ip%

@echo off
@echo.
set /p id= Qual o ID a ser deslogado?(Somente ID em DISCO, caso não tenha digite r)

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.%range%.%ip% %id%
@echo on
@echo O ID %id% foi deslogado...
@echo off
@echo.
set /p repeat= Manter, trocar IP/Range ou Finalizar?(m= manter, i= trocar o ip, r= trocar o range ou f= finalizar)

if "%repeat%" equ "m" (goto:id)
if "%repeat%" equ "i" (goto:ip)
if "%repeat%" equ "r" (goto:rede)
if "%repeat%" equ "f" (goto:enc)
if "%repeat%" equ "0" (goto:enc)

:enc
cls
@echo Script para Deslogar usuários remotamente
@echo off
ping -n 2 0 >NUL
@echo.
@echo Encerrando.. Aguarde..
@echo off
ping -n 3 0 >NUL
exit
