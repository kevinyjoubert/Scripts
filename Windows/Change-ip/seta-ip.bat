cls
@echo Script mudar IP automaticamente

@echo on

set interface=Ethernet
set /p ip= "Endereco IP: "
set mask=255.255.255.0
set /p gateway= "Gateway: "
set dns1=192.168.250.37
set dns2=192.168.250.38

netsh interface ip set address name="%interface%" dhcp

IF NOT [%ip%] == [] IF NOT [%mask%] == [] IF NOT [%gateway%] == [] (
	netsh interface ip set address name="%interface%" static %ip% %mask% %gateway%
)

netsh interface ip set dnsservers name="%interface%" dhcp

IF NOT [%dns1%] == [] IF NOT [%dns2%] == [] (
	netsh interface ip set dnsservers name="%interface%" static %dns1%
	netsh interface ip add dnsservers name="%interface%" addr=%dns2% index=2
)


pause