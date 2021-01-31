@echo off
@REM
@REM - Nome: cp.bat
@REM
@REM - Objetivo: Script feito para copiar o script block-users.bat para todos os usuários;
@REM
@REM Github:       https://github.com/kevinyjoubert
@REM Linkedin:     https://www.linkedin.com/in/keviny-joubert-2992b8b1/
@REM Autor:        Keviny Joubert
@REM
@REM -----------------------------------------------------------------------------------------
@REM
@REM -O que o Script faz?
@REM
@REM    Esse Script foi feito para copiar automáticamente para todos os usuarios o script
@REM    block-users.bat
@REM
@REM
@REM -Como usar?
@REM
@REM    Abra o computador no usuário Administrador e coloque os arquivos no Desktop,
@REM    block-users.bat e o cp.bat e execute o arquivo cp.bat
@REM
@REM
@REM -Nota:
@REM
@REM    O Script foi pensado pra agilizar a cópia do arquivo para todos os usuários
@REM
@REM -----------------------------------------------------------------------------------------
@REM
@REM -Changelog:
@REM
@REM    v1.0 - 30/01/2021, Keviny Joubert:
@REM       - Copiar o arquivo block-users.bat para todos usuários
@REM
@REM -----------------------------------------------------------------------------------------

@echo off

cls

cd c:\users

for /d %%x in (*) do (

echo %%x

copy c:\users\Administrador\Desktop\block-user.bat "c:\users\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

)

pause