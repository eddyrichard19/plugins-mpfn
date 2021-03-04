On Error Resume Next

Set WshNetwork = WScript.CreateObject("WScript.Network")
mytime = Now

Const ForReading = 1
path = "C:\Windows\Setup\INFOIMAG"

Set objFSO = CreateObject("Scripting.FileSystemObject")
Set objTextFile = objFSO.OpenTextFile(path, ForReading)
'LINE1
For i = 1 to 1

    objTextFile.ReadLine

Next

strLine1 = objTextFile.ReadLine
objTextFile.Close

'LINE2
For i = 1 to 2

    objTextFile.ReadLine

Next

strLine2 = objTextFile.ReadLine
objTextFile.Close

'LINE3
For i = 1 to 3

    objTextFile.ReadLine

Next

strLine3 = objTextFile.ReadLine
objTextFile.Close

'LINE4
For i = 1 to 4

    objTextFile.ReadLine

Next

strLine4 = objTextFile.ReadLine
objTextFile.Close

'LINE5
For i = 1 to 5

    objTextFile.ReadLine

Next

strLine6 = objTextFile.ReadLine
objTextFile.Close

writeXML WshNetwork.ComputerName,strLine1,strLine2,strLine3,"Cacert.pem - Ok",strLine4,strLine5,strLine6,mytime


Sub writeXML(Computername,Marca,Modelo,VersionIMAG,Cert,MSoffice,UpdateIMAG,RestoreIMAG,Dateplugin)
  Wscript.Echo _
  "<INFOIMAG>" & vbCrLf & _
  "<CAPTION>" & Computername & "</CAPTION>" & vbCrLf & _
  "<MARCA>" & Marca & "</MARCA>" & vbCrLf & _
  "<MODELO>" & Modelo & "</MODELO>" & vbCrLf & _
  "<VERSIONIMAG>" & VersionIMAG & "</VERSIONIMAG>" & vbCrLf & _
  "<CERT>" & Cert & "</CERT>" & vbCrLf & _
  "<MSOFFICEIMAG>" & MSoffice & "</MSOFFICEIMAG>" & vbCrLf & _
  "<UPDATEIMAG>" & UpdateIMAG & "</UPDATEIMAG>" & vbCrLf & _
  "<RESTOREIMAG>" & RestoreIMAG & "</RESTOREIMAG>" & vbCrLf & _
  "<DATEPLUGIN>" & Dateplugin & "</DATEPLUGIN>" & vbCrLf & _
  "</INFOIMAG>"
End Sub