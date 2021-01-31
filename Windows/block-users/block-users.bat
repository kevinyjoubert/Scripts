@echo off
@REM
@REM - Nome: backup-automatico.bat
@REM
@REM - Objetivo: Realizar backup mais facilmente da pasta do usuário, todos usuários ou de arquivos de extensões isoladas
@REM
@REM Github:       https://github.com/kevinyjoubert
@REM Linkedin:     https://www.linkedin.com/in/keviny-joubert-2992b8b1/
@REM Autor:        Keviny Joubert
@REM
@REM -----------------------------------------------------------------------------------------
@REM
@REM -O que o Script faz?
@REM
@REM    Esse Script foi feito para realizar backup mais facilmente, dando opções de backup da pasta do usuário, todos usuários, extensões de musicas, fotos, videos e remoto.
@REM
@REM
@REM -Como usar?
@REM
@REM    Abra o Script com duplo clique e utilize, caso queira mudar alguma pasta origem ou backup, computador remoto ou log-backup, altere antes de executar o Script.
@REM
@REM
@REM -Nota:
@REM
@REM    O Script foi pensado para facilitar o processo de backup tanto para formatação ou facilidade do usuário
@REM
@REM -----------------------------------------------------------------------------------------
@REM
@REM -Changelog:
@REM
@REM    v1.0 - 10/01/2021, Keviny Joubert:
@REM       - Backup usuário, todos usuários, imagens, videos, musica, remoto
@REM
@REM -----------------------------------------------------------------------------------------




@echo off
cls
color a

::BLOQUEIO DE USUARIO POR MATRICULA

set user=%username%
echo  %user%

if %user% == Administrador goto userok

if %user% == 665327 goto userok

if %user% == 4575555 goto userok

if %user% neq Administrador (
if %user% neq 665327 (
if %user% neq 4575555 (

shutdown -s -t 100 -c "Voce não é permitido a acessar essa máquina!"
ping 0 -n 6 >NUL
shutdown -a
logoff

)))

:userok
::pause
exit