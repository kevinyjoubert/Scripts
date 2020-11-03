@echo off
REM Script feito para limpeza de disco, limpeza de temporários, limpeza da lixeira e limpeza de historicos de navegação

REM "Iniciando prog"

@echo on
@echo ==================================== Limpando o cache do Google Chrome ==================================================
@echo off
REM "Limpando o Cache do google Chrome"

tskill chrome

cd C:\

cd C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\
@echo on
del /q History* /s
del /q Cookies* /s
del /q Extension* /s
del /q Login* /s
del /q Web* /s


RunDll32.exe inetcpl.cpl , ClearMyTracksByProcess 255
@echo ==================================== Concluida a limpeza do Cache do Google Chrome ======================================
@echo off
pause

@echo on
@echo ==================================== Esvaziando a Lixeira ===============================================================
@echo off
REM "Esvaziando a Lixeira"
@echo on

rd /q /s c:\$Recycle.Bin

@echo ==================================== Concluida a Limpeza da Lixeira =====================================================
@echo off
pause

@echo on
@echo ==================================== Limpando a pasta Temp ==============================================================
@echo off
REM "Excluindo a pasta Temporários"
@echo on

rmdir /q /s C:\Users\%username%\AppData\Local\Temp /s
@echo Pasta Temp excluida
@echo 
@echo Pasta Temp criada

mkdir C:\Users\%username%\AppData\Local\Temp

@echo ==================================== Concluida a limpeza da pasta Temp =================================================
@echo off
pause

@echo on
@echo ==================================== Executando a Limpeza de disco =====================================================
@echo off
REM "Executando a Limpeza de disco"

cleanmgr.exe /q /verylowdisk /d C

@echo ==================================== Concluida a Limpeza de disco ======================================================
@echo off
pause