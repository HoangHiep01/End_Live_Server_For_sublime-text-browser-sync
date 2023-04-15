#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.16.1
 Author:         PisM

 Script Function:
	The process "node-windowns.exe" run with unique PID (process id).
	This script will check process, take the PID and end process.
	I think it work smoothly, If you setup package without customize setting.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

Func CloseLiveServer()

;~ 	Local $PID = ProcessExists("C:\Users\" & @UserName & "\AppData\Roaming\Sublime Text 3\Packages\Browser Sync\node-windows.exe")
	Local $PID = ProcessExists("node-windows.exe")
	If $PID Then
		If ProcessClose($PID) Then
			MsgBox(0, "Sucess", "Live server closed!")
		EndIf
	Else
		MsgBox(16 + 262144, "Failed", "Process not found!")
		Exit
	EndIf

EndFunc

CloseLiveServer()