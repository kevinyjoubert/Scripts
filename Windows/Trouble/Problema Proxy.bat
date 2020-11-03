:inicio
@echo off
cls
echo. ----------------------------
echo              MENU             
echo. ----------------------------
echo  1 - Para proxy-lojas
echo. 2 - Para proxy-lojas2

echo. ---------------------------
set /p Comando= Digite uma Opcao(1 ou 2):
if "%Comando%" equ "1" (goto:op1)
if "%Comando%" equ "2" (goto:op2)

:op1
@echo proxy-lojas
@echo.
@echo.

echo dim oShell >> lojas.vbs

echo set oShell = Wscript.CreateObject("Wscript.Shell") >> lojas.vbs

echo oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD" >> lojas.vbs

echo oShell.RegWrite "HKCU\Software\Microsoft\Windows\currentVersion\Internet Settings\ProxyServer", "proxy-lojas.corp.assai.com.br:3128", "REG_SZ" >> lojas.vbs

echo Set oShell = Nothing >> lojas.vbs

@call cscript "lojas.vbs"
del lojas.vbs

@echo Teste a conexao se normalizou
@echo.
pause
exit

:op2
@echo proxy-lojas2
@echo.
@echo.

echo dim oShell >> lojas2.vbs

echo set oShell = Wscript.CreateObject("Wscript.Shell") >> lojas2.vbs

echo oShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ProxyEnable", 1, "REG_DWORD" >> lojas2.vbs

echo oShell.RegWrite "HKCU\Software\Microsoft\Windows\currentVersion\Internet Settings\ProxyServer", "proxy-lojas2.corp.assai.com.br:3128", "REG_SZ" >> lojas2.vbs

echo Set oShell = Nothing >> lojas2.vbs

@call cscript "lojas2.vbs"
del lojas2.vbs

@echo Teste a conexao se normalizou
@echo.
pause
exit