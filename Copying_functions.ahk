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
	
copy_to_notion_2() {
	Send, ^c
	Sleep, 100
	WinActivate, ahk_exe Notion.exe
	Send, {Enter }
	Sleep, 500
	Send, {Up}
	Sleep, 300
	Send, ^v
	Send, {Space}
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



;https://magenta-entremet-a21b67.netlify.app/meanings/apple

generate_url_meanings() {
	send, ^c
	Sleep, 300
	my_word = https://magenta-entremet-a21b67.netlify.app/meanings/
	url = %my_word%%Clipboard%
	Clipboard =  %url%
	Sleep, 200
	Send, ^t
	Sleep, 200
	Send, ^v
	Sleep, 200
	Send, {Enter}
}

Copy_Subtitles_to_notion() {
	ActivateChromeByProfile("Education")
	Sleep, 200
	Click, 10, 1300 0
	Click, 3
	copy_to_notion_2()
}
Copy_Subtitles_to_notion_2() {
	ActivateChromeByProfile("Education")
	Sleep, 200
	Click, 20 , 1050
	Click, 3
	copy_to_notion_2()
}