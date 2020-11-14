@echo off
REM
REM pos_instalação_meus_programas_favoritos.sh - Faz a instalação dos programas 
REM que costumo utilizar no Linux
REM
REM Github:       https://github.com/kevinyjoubert
REM Linkedin:     https://www.linkedin.com/in/keviny-joubert-2992b8b1/
REM Autor:        Keviny Joubert
REM
REM -------------------------------------------------------------------------------
REM
REM -O QUE O SCRIPT FAZ?
REM
REM   Esse script instala os programas que utilizo após a formatação, faz upgrade
REM  e limpeza do sistema. 
REM
REM
REM -COMO USAR?
REM
REM   Abra o terminal aonde se encontra o arquivo e execute o comando abaixo:
REM
REM      $  ./pos_instalação_meus_programas_favoritos.sh
REM
REM
REM -NOTA:
REM
REM   O Script foi pensado para ter uma boa organização, fácil manutenção e para
REM  quem queira editar ao seu uso!
REM
REM -------------------------------------------------------------------------------
REM
REM -Changelog:
REM
REM   v1.0 DATA, Keviny Joubert:
REM       - Primeira versão com poucos programas
REM
REM -------------------------------------------------------------------------------

REM Para mudar o local de origem do backup e o destino pra onde envia, altere aqui
set ORIGEM=C:\Users
set DESTINO=D:\Backup\Arquivos

REM Verificar aonde sera salvo o arquivo log dos backup, pode ser alterado aqui ou deixar padrao
set LOG-BACKUP=D:\Backup

REM cor do terminal
color a

REM menu para opcoes de backup
:MENU
cls
@echo   ___________________________________________________
@echo   +                                                 +    
@echo   +         SCRIPT PARA BACKUP AUTOMATICO           +
@echo   + ----------------------------------------------- +
@echo   +                                                 +
@echo   +  1 - Definir pasta do backup                    +
@echo   +  2 - Backup do usuario atual                    +
@echo   +  3 - Backup de todos os usuarios                +
@echo   +  4 - Backup somente de fotos                    +
@echo   +  5 - Backup somente de musicas                  +
@echo   +  6 - Backup somente de videos                   +
@echo   +  7 - Backup somente de arquivos alterados       +
@echo   +  0 - Sair do script                             +
@echo   +                                                 +
@echo   +_________________________________________________+
@echo.
@echo  Obs: Caso queira mudar o local de Origem, abra o editavel do .bat
@echo.
@echo.

@echo off
REM condicional para opcoes
set /p opcao="Digite o numero da opcao: "

if "%opcao%" equ "1" (goto:opcao-1)
if "%opcao%" equ "2" (goto:opcao-2)
if "%opcao%" equ "3" (goto:opcao-3)
if "%opcao%" equ "4" (goto:opcao-4)
if "%opcao%" equ "5" (goto:opcao-5)
if "%opcao%" equ "6" (goto:opcao-6)
if "%opcao%" equ "7" (goto:opcao-7)
if "%opcao%" equ "0" (goto:opcao-0)


REM opcoes dos backups

:opcao-1
cls
@echo +---- Opcao 1 - Definir pasta do backup ----+
@echo.

set /p DESTINO="Digite o caminho completo da pasta de Destino: "

@echo off
REM condicional para verificar se a pasta existe, se nao cria a mesma
IF EXIST "%DESTINO%" (
    @echo.
    @echo [INFO] - Pasta definida com sucesso!
    @echo.
) ELSE (
    @echo.
    @echo [INFO] - Pasta nao existe e sera criada!
    @echo.

    @echo off
    mkdir %DESTINO%
)

@echo.
@echo.
set /p opcao-1-1="Digite m para voltar ao menu ou 0 para sair do script: "

if "%opcao-1-1%" equ "m" (goto:MENU)
if "%opcao-1-1%" equ "M" (goto:MENU)
if "%opcao-1-1%" equ "0" (goto:opcao-0)



:opcao-2
cls
@echo.
@echo +---- Opcao 2 - Backup do usuario atual ----+
@echo.
@echo.
ping -n 2 0 >NUL
@echo O usuario atual se localiza no Destino: %userprofile%
@echo.
@echo.
ping -n 4 0 >NUL
@echo [ATENCAO] - Sera feito backup de todos os arquivos da pasta do usuario "%username%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada
@echo.
ping -n 4 0 >NUL

@echo off
REM condicional para verificar se a pasta existe, se nao cria a mesma
IF EXIST "%DESTINO%" (
    @echo.
    @echo [INFO] - Pasta existe!
    @echo.
) ELSE (
    @echo.
    @echo [INFO] - Pasta nao existe e sera criada!
    @echo.

    @echo off
    mkdir %DESTINO%
)

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

robocopy "%userprofile%" "%DESTINO%" /E /V /COPYALL /R:3 /W:10 /LOG:%LOG-BACKUP%\log-backup.txt

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!
@echo off
ping -n 10 0 >NUL
goto:opcao-0



:opcao-3
cls
@echo.
@echo +---- Opcao 3 - Backup de todos os usuarios ----+
@echo.
@echo.
ping -n 2 0 >NUL
@echo [ATENCAO] - Sera feito backup de todos os arquivos da pasta "%ORIGEM%", onde econtra-se todos os usuarios
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
REM condicional para verificar se a pasta existe, se nao cria a mesma
IF EXIST "%DESTINO%" (
    @echo.
    @echo [INFO] - Pasta existe!
    @echo.
) ELSE (
    @echo.
    @echo [INFO] - Pasta nao existe e sera criada!
    @echo.

    @echo off
    mkdir %DESTINO%
)

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

robocopy "%ORIGEM%" "%DESTINO%" /E /V /COPYALL /R:3 /W:10 /LOG:%LOG-BACKUP%\log-backup.txt

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!
@echo off
ping -n 10 0 >NUL
goto:opcao-0



:opcao-4
cls
@echo.
@echo +---- Opcao 4 - Backup somente de fotos ----+
@echo.
@echo.
@echo off
ping -n 2 0 >NUL
set /p qual_usr="Defina se deseja para o usuario atual ou todos usuarios(A=Usuario atual / T=Todos usuarios): "

if "%qual_usr%" equ "a" (goto:usr_atual)
if "%qual_usr%" equ "A" (goto:usr_atual)
if "%qual_usr%" equ "t" (goto:usr_todos)
if "%qual_usr%" equ "T" (goto:usr_todos)
if "%qual_usr%" equ "0" (goto:MENU)

:usr_atual
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todas as fotos da pasta do usuario "%username%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
REM condicional para verificar se a pasta existe, se nao cria a mesma
IF EXIST "%DESTINO%" (
    @echo.
    @echo [INFO] - Pasta existe!
    @echo.
) ELSE (
    @echo.
    @echo [INFO] - Pasta nao existe e sera criada!
    @echo.

    @echo off
    mkdir %DESTINO%
)

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (jpg, jfif, gif, bmp, png, psd, tiff, exif, raw, webp, svg, avif) do (
    xcopy %userprofile%\*%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo. >> %LOG-BACKUP%\log-backup.txt
    @echo -------------------------------------------------------------- >> %LOG-BACKUP%\log-backup.txt
    @echo. >> %LOG-BACKUP%\log-backup.txt
)

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!
@echo off
ping -n 10 0 >NUL
goto:opcao-0



pause