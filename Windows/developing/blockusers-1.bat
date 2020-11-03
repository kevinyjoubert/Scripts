@echo off
title USUÁRIO NÃO PERMITIDO
cls
color 0a
:BLOQUEIO DE USUÁRIO POR MATRICULA


set user=%username%
echo %user%

if %user% equ Administrador (goto:userok)
if %user% equ 665327 (goto:userok)


if %user% neq Administrador (goto:useroff)
if %user% neq 665327 (goto:useroff)


:useroff
shutdown /s /t 100 /c "USUÁRIO NÃO PERMITIDO PARA LOGAR NESTE COMPUTADOR"
ping -n 5 0 >NUL
shutdown /a
logoff


:userok
pause>NUL
exit
