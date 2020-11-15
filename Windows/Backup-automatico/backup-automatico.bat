@echo off
@REM
@REM pos_instalação_meus_programas_favoritos.sh - Faz a instalação dos programas 
@REM que costumo utilizar no Linux
@REM
@REM Github:       https://github.com/kevinyjoubert
@REM Linkedin:     https://www.linkedin.com/in/keviny-joubert-2992b8b1/
@REM Autor:        Keviny Joubert
@REM
@REM -------------------------------------------------------------------------------
@REM
@REM -O QUE O SCRIPT FAZ?
@REM
@REM   Esse script instala os programas que utilizo após a formatação, faz upgrade
@REM  e limpeza do sistema. 
@REM
@REM
@REM -COMO USAR?
@REM
@REM   Abra o terminal aonde se encontra o arquivo e execute o comando abaixo:
@REM
@REM      $  ./pos_instalação_meus_programas_favoritos.sh
@REM
@REM
@REM -NOTA:
@REM
@REM   O Script foi pensado para ter uma boa organização, fácil manutenção e para
@REM  quem queira editar ao seu uso!
@REM
@REM -------------------------------------------------------------------------------
@REM
@REM -Changelog:
@REM
@REM   v1.0 DATA, Keviny Joubert:
@REM       - Primeira versão com poucos programas
@REM
@REM -------------------------------------------------------------------------------

@REM Para mudar o local de origem do backup e o destino pra onde envia, altere aqui ou no menu
set ORIGEM=C:\Users
set DESTINO=D:\Backup\Arquivos

@REM parte para caso seja um computador na rede, editar de acordo ou nas opcoes do menu
set ORIGEM-PC-REMOTO=\\10.10.10.10\c$\Users
set DESTINO-PC-REMOTO=D:\Backup\Arquivos

@REM Verificar aonde sera salvo o arquivo log dos backup, pode ser alterado aqui ou deixar padrao
set LOG-BACKUP=D:\Backup

@REM cor do terminal
color a

@REM menu para opcoes de backup
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
@echo   +  8 - Backup em computador remoto                +
@echo   +  0 - Sair do script                             +
@echo   +                                                 +
@echo   +_________________________________________________+
@echo.
@echo  Obs: Para deixar as pastas padrao, altere dentro do script ou utilize as opcoes
@echo.
@echo.

@echo off
@REM condicional para opcoes do MENU
set /p opcao="Digite o numero da opcao: "

if "%opcao%" equ "1" (goto:opcao-1)
if "%opcao%" equ "2" (goto:opcao-2)
if "%opcao%" equ "3" (goto:opcao-3)
if "%opcao%" equ "4" (goto:opcao-4)
if "%opcao%" equ "5" (goto:opcao-5)
if "%opcao%" equ "6" (goto:opcao-6)
if "%opcao%" equ "7" (goto:opcao-7)
if "%opcao%" equ "8" (goto:opcao-8)
if "%opcao%" equ "0" (goto:opcao-0)


@REM opcoes dos backups

@REM opcao 1
:opcao-1
cls
@echo +---- Opcao 1 - Definir pasta do backup ----+
@echo.

@echo off
set /p DESTINO="Digite o caminho completo da pasta de Destino: "

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL
cls

@echo.
set /p continuar="Caminho: (%DESTINO%), esta correto? (s/n) "

if "%continuar%" equ "s" (goto:MENU)
if "%continuar%" equ "S" (goto:MENU)
if "%continuar%" equ "n" (goto:opcao-1)
if "%continuar%" equ "N" (goto:opcao-1)
(goto:MENU)




@REM opcao 2
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
set /p continuar="Deseja continuar? (s/n)"

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 2 0 >NUL
cls

@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

robocopy "%userprofile%" "%DESTINO%" /E /V /COPYALL /R:3 /W:10 /LOG:%LOG-BACKUP%\log-backup.txt

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!

ping -n 10 0 >NUL
exit




@REM opcao 3
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

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

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
exit




@REM opcao 4
:opcao-4
cls
@echo.
@echo +---- Opcao 4 - Backup somente de fotos ----+
@echo.
@echo.
ping -n 2 0 >NUL
set /p qual_usr="Defina se deseja para o usuario atual ou todos usuarios(A=Usuario atual / T=Todos usuarios): "

if "%qual_usr%" equ "a" (goto:usr_atual)
if "%qual_usr%" equ "A" (goto:usr_atual)
if "%qual_usr%" equ "t" (goto:usr_todos)
if "%qual_usr%" equ "T" (goto:usr_todos)
if "%qual_usr%" equ "0" (goto:MENU)


@REM condicional da opcao 4 para o usuario atual
:usr_atual
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todas as fotos da pasta do usuario "%username%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (jpg, jfif, gif, bmp, png, psd, tiff, exif, raw, webp, svg, avif) do (
    xcopy %userprofile%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
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
exit


@REM condicional da opcao 4 para todos os usuarios
:usr_todos
cls
@echo.
@echo [ATENCAO] - Sera feito backup das fotos de todos os usuarios que estao em "%ORIGEM%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (jpg, jfif, gif, bmp, png, psd, tiff, exif, raw, webp, svg, avif) do (
    xcopy %ORIGEM%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
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
exit




@REM opcao 5
:opcao-5
cls
@echo.
@echo +---- Opcao 5 - Backup somente de musicas ----+
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


@REM condicional da opcao 5 para o usuario atual
:usr_atual
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todas as musicas da pasta do usuario "%username%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (acc, mp3, ogg, wma, alac, flac, aiff, pcm, wav) do (
    xcopy %userprofile%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
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
exit


@REM condicional da opcao 5 para todos usuarios
:usr_todos
cls
@echo.
@echo [ATENCAO] - Sera feito backup das musicas de todos os usuarios que estao em "%ORIGEM%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (acc, mp3, ogg, wma, alac, flac, aiff, pcm, wav) do (
    xcopy %ORIGEM%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
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
exit




@REM opcao 6
:opcao-6
cls
@echo.
@echo +---- Opcao 6 - Backup somente de videos ----+
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


@REM condicional da opcao 6 para o usuario atual
:usr_atual
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todas os videos da pasta do usuario "%username%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (wmv, avi, flv, mov, rmvb, mpg, mpeg, mkv, mp4, qt, avchd, swf, ts, divx, ogm, h.264, vob) do (
    xcopy %userprofile%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
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
exit


@REM condicional da opcao 6 para todos usuarios
:usr_todos
cls
@echo.
@echo [ATENCAO] - Sera feito backup dos videos de todos os usuarios, que estao em "%ORIGEM%"
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada!
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

for %%x in (wmv, avi, flv, mov, rmvb, mpg, mpeg, mkv, mp4, qt, avchd, swf, ts, divx, ogm, h.264, vob) do (
    xcopy %ORIGEM%\*.%%x %DESTINO% /s /c /y >> %LOG-BACKUP%\log-backup.txt
    @echo %%x >> %LOG-BACKUP%\log-backup.txt
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
exit




@REM opcao 7
:opcao-7
cls
@echo.
@echo +---- Opcao 7 - Backup somente de arquivos alterados ----+
@echo.
@echo.
ping -n 2 0 >NUL
@echo O usuario atual se localiza no Destino: %userprofile%
@echo.
@echo.
ping -n 4 0 >NUL
@echo [ATENCAO] - Esta opcao foi desenvolvida para atualizar o backup de arquivos que ja foram feito o backup, porem houve alteracao de alguns arquivos ou falha nas opcoes de backups completos, não utilizar para outra finalidade!!
@echo.
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

@echo.
@echo.
@echo off
set /p qual_usr="Defina se deseja para o usuario atual ou todos usuarios(A=Usuario atual / T=Todos usuarios): "

if "%qual_usr%" equ "a" (goto:usr_atual)
if "%qual_usr%" equ "A" (goto:usr_atual)
if "%qual_usr%" equ "t" (goto:usr_todos)
if "%qual_usr%" equ "T" (goto:usr_todos)
if "%qual_usr%" equ "0" (goto:MENU)


@REM condicional da opcao 7 para o usuario atual
:usr_atual
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todas os arquivos da pasta do usuario "%username%"
@echo.
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

robocopy "%userprofile%" "%DESTINO%" /E /V /XO /COPYALL /R:3 /W:10 /LOG:%LOG-BACKUP%\log-backup.txt

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!
@echo off
ping -n 10 0 >NUL
exit


@REM condicional da opcao 7 para todos usuarios
:usr_todos
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todos os arquivos da pasta "%ORIGEM%", onde econtra-se todos os usuarios
@echo.
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Verificando se a pasta do Destino existe, se não a mesma será criada
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
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

ping -n 3 0 >NUL

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

robocopy "%ORIGEM%" "%DESTINO%" /E /V /XO /COPYALL /R:3 /W:10 /LOG:%LOG-BACKUP%\log-backup.txt

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!
@echo off
ping -n 10 0 >NUL
exit




@REM opcao 8
:opcao-8
cls
@echo.
@echo +---- Opcao 8 - Backup em computador remoto ----+
@echo.
@echo.
ping -n 2 0 >NUL

:opcao-8-1
@echo Confirme se as pastas estao corretas:
@echo.
@echo Pasta do Computador remoto, onde esta os arquivos: %ORIGEM-PC-REMOTO%
@echo.
@echo Pasta para onde ira os arquivos do Backup: %DESTINO-PC-REMOTO%
@echo.
set /p confirma="Locais estao corretas?(s/n)"

if "%confirma%" equ "n" (goto:mudar_pasta_rede)
if "%confirma%" equ "N" (goto:mudar_pasta_rede)

(goto:opcao-8-2)

:mudar_pasta_rede
cls
@echo.
set /p mudar_pasta=Qual pasta esta errada? (O=Origem / D=Destino)

if "%mudar_pasta%" equ "o" (goto:origem_rede)
if "%mudar_pasta%" equ "O" (goto:origem_rede)
if "%mudar_pasta%" equ "d" (goto:destino_rede)
if "%mudar_pasta%" equ "D" (goto:destino_rede)

:origem_rede
cls
@echo.
@echo Siga o padrao a seguir com o caminho desejado: \\IP-DA-MAQUINA\HD-DESEJADO$\Users (\\10.20.30.10\C$\Users)
@echo.
set /p ORIGEM-PC-REMOTO="Digite o endereco completo da pasta Origem: "
cls

(goto:opcao-8-1)

:destino_rede
cls
@echo.
@echo Siga o padrao a seguir com o caminho desejado: HD-DESEJADO\PASTA-DESEJADA (D:\Backup)
@echo.
@echo Obs.: Caso coloque uma pasta que nao existe, ela sera criada automaticamente
@echo.
set /p DESTINO-PC-REMOTO="Digite o endereco completo da pasta Destino: "

cls
@echo.
@echo Verificando se a pasta do Destino (DESTINO-PC-REMOTO) existe, se nao a mesma sera criada
@echo.
ping -n 4 0 >NUL

@echo off
@REM condicional para verificar se a pasta existe, se nao cria a mesma
IF EXIST "%DESTINO-PC-REMOTO%" (
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

ping -n 3 0 >NUL
cls

(goto:opcao-8-1)

:opcao-8-2
cls
@echo.
@echo [ATENCAO] - Sera feito backup de todos os arquivos da pasta "%ORIGEM-PC-REMOTO%", onde econtra-se todos os usuarios
set /p continuar=Deseja continuar? (s/n)

if "%continuar%" equ "n" (goto:MENU)
if "%continuar%" equ "N" (goto:MENU)

cls
@echo.
@echo Backup da pasta em andamento, para visualizar o log de backup, acesse a pasta %LOG-BACKUP% e encontre o arquivo com nome de "log-backup.txt"

@echo off

robocopy "%ORIGEM-PC-REMOTO%" "%DESTINO-PC-REMOTO%" /E /V /COPYALL /R:3 /W:10 /LOG:%LOG-BACKUP%\log-backup.txt

start %LOG-BACKUP%\log-backup.txt

cls
@echo.
@echo Backup finalizado, janela sera encerrada em breve!
@echo off
ping -n 10 0 >NUL
exit


@REM opcao 0
:opcao-0
exit