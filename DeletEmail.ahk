#SingleInstance Force

;#IfWinActive ahk_exe chrome.exe



WinActivate, ahk_exe chrome.exe
Loop, 30
{
    Click  350 , 300
	Sleep 200
	Click  550 , 300
	Sleep, 2000
}

;080 458 45678

