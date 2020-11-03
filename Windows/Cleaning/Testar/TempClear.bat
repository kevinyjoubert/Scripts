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

@echo ==================================== Concluida a limpeza da pasta Temp 