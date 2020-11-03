REM SERVIDOR APONTANDO SAMSIMPLE - 10.117.177.13

	taskkill /f /im mgssecsvc.exe
	taskkill /f /im ndinit.exe 
	taskkill /f /im ndtask.exe 

	rem DEL /q  "\programdata\managesoft corp\managesoft\common\uploads\inventories\"* 

	
	mgspolicy.exe -t machine
	cd "\User\Administrador\Appdata\Local\Temp\managesoft\"
	dir policy.log
	dir schedule.log
	dir tracker.log

	cd "\program files (x86)\managesoft\policy client\"
	call mgssecsvc.exe 
	
	cd "\program files (x86)\Managesoft\Schedule Agent\" 
	call ndinit.exe 
	call ndtask.exe

	rem Filtra houve sucesso ao aplicar a politica com servidor 
	find /c "successfully installed the merged" \windows\temp\managesoft\policy.log 


	cd\temp\



	rem Agent politica 
	cd "\program files (x86)\managesoft\policy Client" 
	mgspolicy.exe -t machine 

	rem Força o Inventario
	cd "\program files (x86)\managesoft\Tracker"
	ndtrack.exe -t machine 

	
	find  "Successfully" \windows\temp\ManageSoft\UPloader.log 


	tasklist |findstr nd 
	tasklist |findstr mgs 


	dir  "\programdata\managesoft corp\managesoft\common\uploads\inventories\" >> flex.txt 

	cd "\programdata\managesoft corp\managesoft\common\uploads\inventories\"
	dir 



	cd "\program files (x86)\ManageSoft\Security Agent\"
	mgssecsvc.exe 

	cd "\program files (x86)\ManageSoft\Schedule Agent\"
	ndinit.exe 

	tasklist | findstr mgssecsvc.exe

	cd "\programdata\ManageSoft Corp\ManageSoft\Tracker\Inventories\" 
	dir *.ini


	tasklist |findstr nd 
	tasklist |findstr mgs 


	cd\windows\temp\managesoft\

	dir | find /c ".log" 

	rem telnet deve ser habilitado no painel do Windows
	telnet 10.203.4.4 80


