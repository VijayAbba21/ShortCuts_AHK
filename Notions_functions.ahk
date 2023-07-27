;add Heading change color & add divider

addHeading2AndDividerInNotion(num) {
	Send, {Enter 2}
	Sleep, 200
	Send, /div ; divider
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, {UP}
	Sleep, 200
	Send, /  ; heading 2
	Send, %num%
	Sleep, 200
	Send, {Enter}
	Sleep, 200
	Send, ^+h ; color
	return
}

; select and turn it into bold & underline In notion
addBoldAndUnderlineAndRed(){
	Send, {Shift Down}
	Send, {Home}
	Send, {Shift Up}
	Send, ^u
	Sleep, 100
	Send, ^b
	Sleep, 100
	Send, ^+h ; color
	return
}

;Vscode function----

live_server(){
	ActivateChromeByProfile("Minimal")
	Sleep, 100
	WinActivate, ahk_exe Code.exe
	Sleep, 100
	Send, ^j
	Sleep, 200
	Send, live-server
	Sleep, 200
	Send, {Enter}
	Sleep, 2500
	ActivateChromeByProfile("Minimal")
	Send, ^+i
	Sleep, 500
	Send, ^r
	WinActivate, ahk_exe Code.exe
	Send, ^j
	return
}