taskkill /f /im dsa.exe 

rem Ativei o servico dsa.exe 
cd "C:\Program Files\Trend Micro\Vulnerability Protection Agent"
call dsa_control status
call dsa_control stop
call dsa.exe 
call dsa_control -r dms://10.203.2.10:4120
call dsa_control start 


dsa_query -g dms://10.203.2.10:4120

cd "C:\Program Files\Trend Micro\Vulnerability Protection Agent"
dsa_control -d dms://10.203.2.10:4120
rem Correcao do Agent VP 
dsa_control -r dms://10.203.2.10:4120
dsa_control -a dms://10.203.2.10:4120


dsa_control -c dms://10.203.2.10:4120

dsa_control -u dms://10.203.2.10:4120
dsa_control -U dms://10.203.2.10:4120
dsa_control -r dms://10.203.2.10:4120


rem *Agents VP - Agente esta rodando - run *




	cd "C:\Program Files\Trend Micro\Vulnerability Protection Agent"

	dsa_control -r
	sc stop ds_agent
	sc start ds_agent

	sc query ds_agent 
        sc start ds_agent 

	
Hostname