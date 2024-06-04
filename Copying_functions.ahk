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
	Click, 10, 1300
	WinActivate, ahk_exe Notion.exe
	Send, ^v
	Sleep, 100
	Send, {Space}
	return
}
copy_to_notion_3() {
	Send, ^c
	Sleep, 100
	WinActivate, ahk_exe Notion.exe
	Send, ^v
	Sleep, 100
	Send, {Space}
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
 

; Function to convert WebVTT to plain text
vttToPlainText(vttContent) {
    ; Remove the first line if it contains "WEBVTT"
    if (SubStr(vttContent, 1, 6) = "WEBVTT")
        vttContent := SubStr(vttContent, InStr(vttContent, "`n") + 1)

    ; Initialize plain text
    plainText := "'make notes from this subtitles' `n"

    ; Remove timestamps, line numbers, and other metadata
    Loop, Parse, vttContent, `n
    {
        if !(RegExMatch(A_LoopField, "^\d+:?\d+:\d+\.\d+ --> \d+:?\d+:\d+\.\d+$") or RegExMatch(A_LoopField, "^\d+$"))
        {
            plainText .= A_LoopField "`n"
        }
    }

    ; Return plain text
    return plainText
}

vttToPlainTextTwo(vttContent) {
    ; Remove the first line if it contains "WEBVTT"
    if (SubStr(vttContent, 1, 6) = "WEBVTT")
        vttContent := SubStr(vttContent, InStr(vttContent, "`n") + 1)

    ; Initialize plain text
    plainText := "make notes from this subtitles `n Subtitles: "

    ; Remove timestamps, line numbers, and other metadata
    Loop, Parse, vttContent, `n
    {
        if !(RegExMatch(A_LoopField, "^\d+:?\d+:\d+\.\d+ --> \d+:?\d+:\d+\.\d+$") or RegExMatch(A_LoopField, "^\d+$"))
        {
            ; Trim whitespace from the beginning and end of the line
            trimmedLine := RegExReplace(A_LoopField, "^\s+|\s+$")
            ; Check if the trimmed line is not empty
            if (trimmedLine != "")
            {
                ; Append the trimmed line to the plain text
                plainText .= trimmedLine " "
            }
        }
    }

    ; Replace newline characters with space
    plainText := StrReplace(plainText, "`n `n", " ")

    ; Return plain text
    return plainText
}
