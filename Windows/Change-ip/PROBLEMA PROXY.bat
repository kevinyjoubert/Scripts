:inicio
color a

@echo off
cls

@echo ;-------------------------------;
@echo ;                               ;
@echo ;     ESCOLHA UMA OPCAO         ;
@echo ;                               ;
@echo ; 1 - Problema proxy 1          ;
@echo ; 2 - Problema proxy 2          ;
@echo ;                               ;
@echo ;                               ;
@echo ; OBS.:                         ;
@echo ; Caso uma opcao nao funcione   ;
@echo ; Teste a proxima!!             ;
@echo ;                               ;
@echo ;-------------------------------;

@echo.
@echo.

@echo off
set /p op= Digite uma opcao (1 ou 2): 

if "%op%" equ "1" (goto:proxy1)
if "%op%" equ "2" (goto:proxy2)



:proxy1
cls
@echo off

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d proxy-lojas.corp.assai.com.br:3128 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;10.*;172.16.*;192.168.*;atena;webponte;transfer;pap102c;*.barcelona.com;*.gpabr.com;*.cbd.root.gpa;*.cbdnet.com.br;*.corp.assai.com.br;*.assaiatacadista.com.br;*.matriz.corp.assaiatacadista.com.br;*.viavarejo.com.br;timgpa;*.corp.comprebem.com.br;*.multivarejogpa.com.br;comprebem.bluesoft.com.br;bi.bluesoft.com.br;cdn.bluesoft.com.br;request-timer.bluesoft.com.br;xmpp.bluesoft.com.br" /f

goto:finish



:proxy2
cls
@echo off

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d proxy-lojas2.corp.assai.com.br:3128 /f

REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;10.*;172.16.*;192.168.*;atena;webponte;transfer;pap102c;*.barcelona.com;*.gpabr.com;*.cbd.root.gpa;*.cbdnet.com.br;*.corp.assai.com.br;*.assaiatacadista.com.br;*.matriz.corp.assaiatacadista.com.br;*.viavarejo.com.br;timgpa;*.corp.comprebem.com.br;*.multivarejogpa.com.br;comprebem.bluesoft.com.br;bi.bluesoft.com.br;cdn.bluesoft.com.br;request-timer.bluesoft.com.br;xmpp.bluesoft.com.br" /f

goto:finish



:finish
cls
@echo off

@echo.
@echo Teste se a conexao normalizou, caso nao normalize, execute esse programa novamente e escolha outra opcao
@echo.

ping -n 15 0 >NUL

@exit