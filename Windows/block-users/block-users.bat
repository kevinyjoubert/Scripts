@echo off
@REM
@REM - Nome: block-users.bat
@REM
@REM - Objetivo: Script feito para bloquear usuários no computador.
@REM
@REM Github:       https://github.com/kevinyjoubert
@REM Linkedin:     https://www.linkedin.com/in/keviny-joubert-2992b8b1/
@REM Autor:        Keviny Joubert
@REM
@REM -----------------------------------------------------------------------------------------
@REM
@REM -O que o Script faz?
@REM
@REM    Esse Script foi feito para realizar o bloqueio de usuarios em uma rede AD de empresas,
@REM    porém pode ser usado para outras finalidades.
@REM
@REM
@REM -Como usar?
@REM
@REM    Abra o script no modo editavel e coloque os usuários que você deseja dar permissão e
@REM    logo em seguida, abra o script cp.bat para ser copiado para todos os usuários
@REM
@REM
@REM -Nota:
@REM
@REM    O Script foi pensado para impedir que usuários não permitidos acessem um computador
@REM    em especifico, lembrando que a cada usuário novo, o script deve ter o usuário 
@REM    permitido e executar o arquivo cp.bat novamente
@REM
@REM -----------------------------------------------------------------------------------------
@REM
@REM -Changelog:
@REM
@REM    v1.0 - 30/01/2021, Keviny Joubert:
@REM       - Bloqueio de usuário por matricula
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