Const HKEY_CURRENT_USER = &H80000001 
Const HKEY_LOCAL_MACHINE = &H80000002 
 
strComputer = "." 
  
Set oReg=GetObject("winmgmts:{impersonationLevel=impersonate}!\\" & _ 
    strComputer & "\root\default:StdRegProv") 
  
mytime = Now
  
strKeyPath = "SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" 
strValueName = "TargetGroupEnabled"
oReg.GetDWORDValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,dwValue 

'Wscript.Echo "Current History Buffer Size: " & "*" & dwValue & "*"

if dwValue=1 then
TargetGroupEnabled = "CONECTADO"
else
TargetGroupEnabled = "NO CONECTADO"
End if

strKeyPath = "SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" 
strValueName = "TargetGroup"
oReg.GetStringValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,strValue1 


Select Case strValue1
	case "EX_01"
		TargetGroup = strValue1
	case "EX_02"
		TargetGroup = strValue1
	case "EX_03"
		TargetGroup = strValue1
	case "EX_04"
		TargetGroup = strValue1
	case "EX_05"
		TargetGroup = strValue1
	case "EX_06"
		TargetGroup = strValue1
	case "EX_07"
		TargetGroup = strValue1
	case "EX_08"
		TargetGroup = strValue1
	case "SC_00"
		TargetGroup = strValue1
	case "SC_01"
		TargetGroup = strValue1
	case "SC_05"
		TargetGroup = strValue1
	case "SC_06"
		TargetGroup = strValue1
	case "SC_07"
		TargetGroup = strValue1
	case "SC_08"
		TargetGroup = strValue1
	case "SC_09"
		TargetGroup = strValue1
	case "SC_10"
		TargetGroup = strValue1
	case "SC_11"
		TargetGroup = strValue1
	case "SC_12"
		TargetGroup = strValue1
	case else
		TargetGroup = "NO CONECTADO"
End select



strKeyPath = "SOFTWARE\Policies\Microsoft\windows\WindowsUpdate" 
strValueName = "WUServer"
oReg.GetStringValue HKEY_LOCAL_MACHINE,strKeyPath,strValueName,strValue2

if strValue2="http://172.16.0.9" then
WUServer = strValue2
else
WUServer = "NO CONECTADO"
End if


		

writeXML "Oficina de Soporte de T.I.",TargetGroupEnabled,WUServer,TargetGroup,mytime


Sub writeXML(Publisher,Wsusstate,Wsusserver,Targetgroup,Dateplugin)
  Wscript.Echo _
  "<WSUSSTATUS>" & vbCrLf & _
  "<PUBLISHER>" & Publisher & "</PUBLISHER>" & vbCrLf & _
  "<WSUSSTATE>" & Wsusstate & "</WSUSSTATE>" & vbCrLf & _
  "<WSUSSERVER>" & Wsusserver & "</WSUSSERVER>" & vbCrLf & _
  "<TARGETGROUP>" & Targetgroup & "</TARGETGROUP>" & vbCrLf & _
  "<DATEPLUGIN>" & Dateplugin & "</DATEPLUGIN>" & vbCrLf & _
  "</WSUSSTATUS>"
End Sub