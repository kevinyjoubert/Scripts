@echo off
for /f "tokens=2" %%a in ('query user ^| find /I "Disco"') do logoff %%a 
Pause

logoff find /I "Disco"

query user | find /I "Disco | logoff %username%
