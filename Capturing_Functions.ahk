copyTimeStamp(window_name){
	clipboard := ""
	ActivateChromeByProfileEducation()
	Send, {F13}
	Sleep, 100
	WinActivate, %window_name%
    Send, ^v
	Sleep, 100
}


pastInNotion() {
    Send, {Enter }
    Sleep, 100
    Send, {Up}
    Sleep, 100
    Send, ^v
    Sleep, 100
    Send, {Down}
    Sleep, 100
    Send, {Enter}
	Sleep, 100
	Send, {.}{Space}
	clipboard := ""
    return 
}

pastImageLinkWithDOt() {
	ClipWait,,1
    Sleep, 100
    Send, ^v
    Sleep, 100
    Send, {Enter}
	Sleep, 100
	Send, {Space}
    Sleep, 100
	Send, {Enter}
	Sleep, 100
	Send, {Enter}
    return 
}



down_in_Word(window_name){
	if (window_name = "ahk_exe WINWORD.EXE") {
    	; Send the down arrow key
    	Send, {Down}
	}
}

;1-----REGION-----SHARE X
region_screeenshort(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, ^{PrintScreen}
	; Input, outputVar, L1 , {Esc}
	; if (UserInput = esc)  {
	; 	MsgBox You pressed eesc
	; 	return 
	; }
	ClipWait,, 1

	WinActivate, %window_name%

	down_in_Word(window_name)
 	pastInNotion()
	down_in_Word(window_name)
	
	return
}


;2-----REGION-----Itop Screenshot
region_screeenshort_itop(window_name) {
	;CopyUrlAtCurrentTime()
	;Send, {Media_Stop}
	clipboard := ""
	Send, !o
	ClipWait,, 1
	WinActivate, %window_name%

	down_in_Word(window_name)
	pastInNotion()
	down_in_Word(window_name)

	return
}

;3-----REGION-----GreenShort Screenshot
region_screeenshort_GreenShort(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, !{PrintScreen}
	ClipWait,, 1
	WinActivate, %window_name%

	down_in_Word(window_name)
	pastInNotion()
	down_in_Word(window_name)

	return
}



;4----Fixed REGION------ SHARE X
fixedRegionCapture(window_name) {
	copyTimeStamp(window_name)

	clipboard := ""
	Send, ^+{PrintScreen}
	ClipWait,,1
	WinActivate, %window_name%

	pastInNotion()
	pastImageLinkWithDOt()
	return
}

;4----last REGION------ SHARE X
lastRegionCapture(window_name) {
	clipboard := ""
	Send, ^+x
	ClipWait,,1
	WinActivate, %window_name%

	down_in_Word(window_name)
	pastInNotion()
	down_in_Word(window_name)

	return
}

;5-----GIF REGION-----SHARE X
region_gif_record(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, ^!{PrintScreen}
	ClipWait,, 1
	WinActivate, %window_name%

	
	down_in_Word(window_name)
	pastInNotion()
	down_in_Word(window_name)

	return
}

;5.1-----Video REGION-----SHARE X
region_video_record(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, +{PrintScreen}
	ClipWait,, 1
	WinActivate, %window_name%

	down_in_Word(window_name)
	pastInNotion()
	down_in_Word(window_name)

	return
}


;6 extract text  -------------- Power toyes
extract_text(window_name) {
	clipboard := ""
	Send, #+t
	ClipWait,,1
	WinActivate, %window_name%

	down_in_Word(window_name)
	pastInNotion()
	down_in_Word(window_name)

	return
}