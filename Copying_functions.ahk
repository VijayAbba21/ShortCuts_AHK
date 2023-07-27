;Copy something to Notion
copy_to_notion() {
	Send, ^c
	Sleep, 100
	WinActivate, ahk_exe Notion.exe
	Send, {Enter }
	Sleep, 500
	Send, {Up}
	Sleep, 300
	Send, ^v
	Sleep, 300
	Send, {Down}
	Sleep, 500
	Send, {Enter}
	return
	}
	
	
;copy to VS Code to End
jsComment  := " // "
copy_to_vs_code() {
	Send, +{Home}
	Send, +{Home}
	Sleep, 100
	Send, ^c
	Sleep, 100
	WinActivate, ahk_exe Code.exe
	Clipboard :=  " // " . Clipboard
	Sleep, 100
	Send, {End}
	Sleep, 100
	Send, ^v
	Sleep, 100
	Send, {Down}
	return
}

