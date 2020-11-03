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

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo.
@echo ;--------Computadores na rede---------; 
@echo ;                                     ;
@echo ;   1 - Subgerencia                   ;
@echo ;   2 - Chefes seccao                 ;
@echo ;   3 - Atendimento 1                 ;
@echo ;   4 - Atendimento 2                 ;
@echo ;   5 - Balcao fiscal                 ;
@echo ;   6 - Televendas 1                  ;
@echo ;   7 - Televendas 2                  ;
@echo ;   8 - RH 1                          ;
@echo ;   9 - RH 2                          ;
@echo ;   10 - RM 1                         ;
@echo ;   11 - RM 2                         ;
@echo ;   12 - RM 3                         ;
@echo ;   13 - Treinamento                  ;
@echo ;   14 - Gerencia                     ;
@echo ;   15 - Chefe Adm                    ;
@echo ;                                     ;
@echo ;-------------------------------------;
@echo.
set /p op= Digite qual opcao:

if "%op%" equ "0" (goto:enc)
if "%op%" equ "1" (goto:subgerencia)
if "%op%" equ "2" (goto:chefessec)
if "%op%" equ "3" (goto:atendimento1)
if "%op%" equ "4" (goto:atendimento2)
if "%op%" equ "5" (goto:balcaofiscal)
if "%op%" equ "6" (goto:televendas1)
if "%op%" equ "7" (goto:televendas2)
if "%op%" equ "8" (goto:rh1)
if "%op%" equ "9" (goto:rh2)
if "%op%" equ "10" (goto:rm1)
if "%op%" equ "11" (goto:rm2)
if "%op%" equ "12" (goto:rm3)
if "%op%" equ "13" (goto:treinamento)
if "%op%" equ "14" (goto:gerencia)
if "%op%" equ "15" (goto:chefeadm)
if "%op%" equ "r" (goto:inicio)


:subgerencia

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.32

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.32 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:subgerencia)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:chefessec

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.13

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.13 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:chefessec)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:atendimento1

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.21

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.21 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:atendimento1)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:atendimento2

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.22

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.22 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:atendimento2)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:balcaofiscal

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.11

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.11 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:balcaofiscal)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:televendas1

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.61

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.61 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:televendas1)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:televendas2

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.62

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.62 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:televendas2)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:rh1

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.41

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.41 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:rh1)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:rh2

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.42

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.42 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:rh2)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)

:rm1

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.6

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.6 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:rm1)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:rm2

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.7

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.7 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:rm2)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:rm3

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.8

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.8 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:rm3)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:treinamento

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.75

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.75 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:treinamento)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:gerencia

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.31

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.31 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:gerencia)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:chefeadm

cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo on
qwinsta /server:10.60.136.33

@echo off
@echo.
set /p id= Digite o ID para deslogar(Caso nao tenha ID em Disco, Digite r):

if "%id%" equ "0" (goto:enc)
if "%id%" equ "r" (goto:inicio)

@echo.
@echo Aguarde...
@echo.
@echo off
rwinsta /server:10.60.136.33 %id%
@echo.
@echo O ID %id% foi deslogado..
@echo off
@echo.
set /p lp= Continuar, trocar a maquina ou finalizar(c=continuar/t=trocar/f=finalizar)?

if "%lp%" equ "c" (goto:chefeadm)
if "%lp%" equ "t" (goto:inicio)
if "%lp%" equ "f" (goto:enc)


:enc
cls
@echo Script para Deslogar usuarios remotamente
@echo off
ping -n 2 0 >NUL
@echo.
@echo Encerrando.. Aguarde..
@echo off
ping -n 3 0 >NUL
exit