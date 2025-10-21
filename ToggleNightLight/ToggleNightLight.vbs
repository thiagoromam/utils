Set file = CreateObject("Scripting.FileSystemObject")
Set script = file.GetFile(WScript.ScriptFullName)

folder = file.GetParentFolderName(script)

Set shell = CreateObject("Wscript.Shell")
shell.Run "powershell.exe -windowStyle Hidden ""cd " & folder & "; .\ToggleNightLight.ps1""", 0, false