
#SingleInstance Force ; Ensures only one instance of the script is running

; Wait for Chrome to activate


; Define the coordinates where you want to click
Click_X := 1500
Click_Y := 490

Click_XX := 1420
Click_YY := 750

; Define the function to perform the click action
PerformClick() {
	global
	WinActivate, ahk_exe chrome.exe
	Sleep, 1000
    Click, %Click_X% , %Click_Y%
	Sleep, 3000
	Click,  %Click_XX% , %Click_YY%
	Sleep, 3000
}

PerformClick()