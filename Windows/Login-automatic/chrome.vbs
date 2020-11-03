set wshell = CreateObject("WScript.Shell") 

wshell.run "http://l0056-rub01.lojas.corp.assai.com.br/"
wscript.sleep 1500
wscript.sleep 1500

wshell.sendkeys "^{P}"
wscript.sleep 300