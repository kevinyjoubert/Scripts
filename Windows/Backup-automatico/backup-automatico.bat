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
set Origem=C:\Users\Public\Wallpaper
set Destino=X:\Backup\teste-backup

@echo                          ___________________________________________________
@echo                          +                                                 +    
@echo                          +         SCRIPT PARA BACKUP AUTOMATICO           +
@echo                          + ----------------------------------------------- +
@echo                          +                                                 +
@echo                          +  1 - Definir pasta do backup                    +
@echo                          +  2 - Backup do usuario atual                    +
@echo                          +  3 - Backup de todos os usuarios                +
@echo                          +  4 - Backup somente de fotos                    +
@echo                          +  5 - Backup somente de musicas                  +
@echo                          +  6 - Backup somente de videos                   +
@echo                          +  7 - Backup somente de arquivos alterados       +
@echo                          +                                                 +
@echo                          +_________________________________________________+









pause