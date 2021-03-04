On Error Resume Next
strComputer = "."
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
Set colItems = objWMIService.ExecQuery("Select * from Win32_QuickFixEngineering",,48)
For Each objItem in colItems
   
writeXML objItem.Caption,objItem.CSName,objItem.Description,objItem.HotFixID,objItem.InstalledOn

Next

Sub writeXML(Caption,Csname,Description,Hotfixid,Installedon)
  Wscript.Echo _
  "<WSUSUPDATE>" & vbCrLf & _
  "<CSNAME>" & Csname & "</CSNAME>" & vbCrLf & _
  "<CAPTION>" & Caption & "</CAPTION>" & vbCrLf & _
  "<DESCRIPTION>" & Description & "</DESCRIPTION>" & vbCrLf & _
  "<HOTFIXID>" & Hotfixid & "</HOTFIXID>" & vbCrLf & _
  "<INSTALLEDON>" & Installedon & "</INSTALLEDON>" & vbCrLf & _
  "</WSUSUPDATE>"
End Sub