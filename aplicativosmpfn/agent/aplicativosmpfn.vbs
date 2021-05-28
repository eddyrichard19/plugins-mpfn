On Error Resume Next
strComputer = "."
mytime = Now

'SGF
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from CIM_DataFile where Name = " & "'C:\\prog\\sgf\\sgf.exe'")
strFile = "C:\prog\sgf\sgf.exe"
SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
SET objFile = objFSO.GetFile(strFile)


For Each objItem in colItems
writeXML objItem.CSName,objItem.Manufacturer,"SGF - Sistema de Gestion Fiscal",objItem.Version,objItem.Drive,objItem.Path,objItem.FileName,CDATE(objFile.DateLastModified),mytime
Next


'SIATF
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from CIM_DataFile where Name = " & "'C:\\prog\\SIATF\\siatf_principal.exe'")
strFile = "C:\prog\siatf\siatf_principal.exe"
SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
SET objFile = objFSO.GetFile(strFile)

For Each objItem in colItems
writeXML objItem.CSName,objItem.Manufacturer,"SIATF - Sistema de Apoyo al Trabajo Fiscal",objItem.Version,objItem.Drive,objItem.Path,objItem.FileName,CDATE(objFile.DateLastModified),mytime
Next


'SCAF
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from CIM_DataFile where Name = " & "'C:\\prog\\scaf\\exepbd\\scaf.exe'")
strFile = "C:\prog\scaf\exepbd\scaf.exe"
SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
SET objFile = objFSO.GetFile(strFile)

For Each objItem in colItems
writeXML objItem.CSName,objItem.Manufacturer,"SCAF - Sistema de Control de Activos Fijos",objItem.Version,objItem.Drive,objItem.Path,objItem.FileName,CDATE(objFile.DateLastModified),mytime
Next

'SIAC
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from CIM_DataFile where Name = " & "'C:\\prog\\siac\\ejecuta\\siac.exe'")
strFile = "C:\prog\siac\ejecuta\siac.exe"
SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
SET objFile = objFSO.GetFile(strFile)

For Each objItem in colItems
writeXML objItem.CSName,objItem.Manufacturer,"SIAC - Sistema Integrado de Archivo Central",objItem.Version,objItem.Drive,objItem.Path,objItem.FileName,CDATE(objFile.DateLastModified),mytime
Next

'SIGA
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from CIM_DataFile where Name = " & "'C:\\prog\\sigfys\\ejecuta\\sistema_integral.exe'")
strFile = "C:\prog\sigfys\ejecuta\sistema_integral.exe"
SET objFSO = CREATEOBJECT("Scripting.FileSystemObject")
SET objFile = objFSO.GetFile(strFile)

For Each objItem in colItems
writeXML objItem.CSName,objItem.Manufacturer,"SIGA - Sistema Integrado de Gestion Gubernamental",objItem.Version,objItem.Drive,objItem.Path,objItem.FileName,CDATE(objFile.DateLastModified),mytime
Next


Sub writeXML(Computername,Manufacturer,Name,Version,Drive,Folder,Filename,LastModified,Dateplugin)
  Wscript.Echo _
  "<APLICATIVOSMPFN>" & vbCrLf & _
  "<CAPTION>" & Computername & "</CAPTION>" & vbCrLf & _
  "<PUBLISHER>" & Manufacturer & "</PUBLISHER>" & vbCrLf & _
  "<NAMEMP>" & Name & "</NAMEMP>" & vbCrLf & _
  "<VERSION>" & Version & "</VERSION>" & vbCrLf & _
  "<FOLDER>" & Drive & Folder & "</FOLDER>" & vbCrLf & _
  "<FILENAME>" & Filename & ".exe" & "</FILENAME>" & vbCrLf & _
  "<LASTMODIFIED>" & Lastmodified & "</LASTMODIFIED>" & vbCrLf & _
  "<DATEPLUGIN>" & Dateplugin & "</DATEPLUGIN>" & vbCrLf & _
  "</APLICATIVOSMPFN>"
End Sub
