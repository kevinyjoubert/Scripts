Hostname

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f /v WUServer /t REG_SZ  /d "http://wsus01.corp.assai.com.br:8530"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f /v WUStatusServer /t REG_SZ /d "http://wsus01.corp.assai.com.br:8530"
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f /v WUSatusServer

REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v UseWUServer /t REG_DWORD /d "1"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v NoAutoUpdate /t REG_DWORD /d "0"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v AUOptions /t REG_DWORD /d "4"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v ScheduledInstallDay /t REG_DWORD /d "0"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v ScheduledInstallTime /t REG_DWORD /d "8"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v AutoInstallMinorUpdates /t REG_DWORD /d "1"
REG ADD HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate\AU /f /v NoAutoRebootWithLoggedOnUsers /t REG_DWORD /d "1"

net stop "windows update"
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate /f /v SusClientId
net start "windows update"

wuauclt /detectnow
wuauclt /resetauthorization
wuauclt /scannow

exit