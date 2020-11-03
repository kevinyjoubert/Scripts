:inicio
cls

@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL

@echo.
@echo off
set /p op= Vai ser Local ou Rede(L=Local/R=Rede)?

if "%op%" equ "l" (goto:local)
if "%op%" equ "r" (goto:rede)
if "%op%" equ "0" (goto:enc)

:local
cls
@echo on
qwinsta
@echo.
@echo off
set /p id= Qual ID a ser deslogado?(Caso nao tenha ID em DISCO, digite r)
@echo.

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
set /p lp= Continuar deslogando, Trocar IP ou Finalizar script(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:local)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)

:rede
@echo.
@echo off
set /p ip= Digite o final do IP:

if "%ip%" equ "0" (goto:enc)

goto:r

:r
cls
@echo on
qwinsta /server:10.60.136.%ip%

@echo off
@echo.
set /p id= Qual ID a ser deslogado?(Caso nao tenha ID em DISCO, digite r)

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.%ip% %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar deslogando, Trocar IP ou Finalizar script(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:r)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)

:enc
@echo.
@echo Encerrando.. Aguarde..
@echo off
ping -n 3 0 >NUL
exit