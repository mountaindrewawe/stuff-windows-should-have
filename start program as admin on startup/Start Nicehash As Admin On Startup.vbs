' Title: Start NiceHash as admin on startup
' Author: Mountain
' Date: 1/7/22

' Instructions:
' Change the file path to your Nicehash executeable and then place this file in your startup folder, WIN + R > "shell:startup"

Set WshShell = CreateObject("WScript.Shell" ) 
WshShell.Run """C:\Program Files (x86)\NiceHash\NiceHashMiner.exe""", 0
Set WshShell = Nothing