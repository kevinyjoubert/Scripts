@echo off
color a
REM Menu opção -------------------------------------------------------------------------------------
set /p ch= choice /C AU /M "Pressione: [A]cessar no Assai ou [U]sar em outros lugares"
if "%ch%" equ "a" (goto:DENTRO)
if "%ch%" equ "u" (goto:FORA)


:DENTRO:
rem configurando dhcp ip -----------
netsh interface ip set address name="Wi-Fi" dhcp
rem configurando dhcp ip -----------


rem configura dns primário (fixo)
@echo Aguarde... configurando dns
netsh interface ipv4 add dnsserver "Wi-Fi" address=192.168.250.37 index=1

rem configura dns secundário (fixo)
netsh interface ipv4 add dnsserver "Wi-Fi" address=192.168.250.38 index=2

rem configura proxy  (fixo)
@echo Aguarde... configurando proxy
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /t REG_SZ /d proxy-lojas.corp.assai.com.br:3128 /f
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyOverride /t REG_SZ /d "localhost;127.0.0.1;10.*;172.16.*;192.168.*;atena;webponte;transfer;pap102c;*.barcelona.com;*.gpabr.com;*.cbd.root.gpa;*.cbdnet.com.br;*.corp.assai.com.br;*.assaiatacadista.com.br;*.matriz.corp.assaiatacadista.com.br;*.viavarejo.com.br;timgpa;*.corp.comprebem.com.br;*.multivarejogpa.com.br;comprebem.bluesoft.com.br;bi.bluesoft.com.br;cdn.bluesoft.com.br;request-timer.bluesoft.com.br;xmpp.bluesoft.com.br" /f

@echo Concluido DHCP

@echo Tecle 'enter' para fechar
pause > nul
exit

REM Menu opção -------------------------------------------------------------------------------------

:FORA:
rem configura dhcp (ip)
@echo Aguarde... desconfigurando automaticamente

rem desativando o proxy -----------
REG ADD "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f
rem desativando o proxy -----------


REM control.exe /name Microsoft.networkandSharingcenter

@echo Concluido DNS

@echo Tecle 'enter' para fechar
pause > nul
exit
REM Menu opção -------------------------------------------------------------------------------------
