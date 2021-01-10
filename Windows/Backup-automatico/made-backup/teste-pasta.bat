@echo off
set Destino=X:\Backup\teste-backup1
set pasta="\teste-backup"

IF EXIST "%Destino%" (
	echo existe
) ELSE (
	mkdir %Destino%
)

pause