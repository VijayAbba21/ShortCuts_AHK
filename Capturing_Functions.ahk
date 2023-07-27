pastInNotion() {
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

;1-----REGION-----SHARE X
region_screeenshort(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, ^{PrintScreen}
	ClipWait,, 1
	WinActivate, %window_name%
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

;2-----REGION-----Itop Screenshot
region_screeenshort_itop(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, !o
	ClipWait,, 1
	WinActivate, %window_name%
	pastInNotion()
	return
}

;3-----REGION-----GreenShort Screenshot
region_screeenshort_GreenShort(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, !{PrintScreen}
	ClipWait,, 1
	WinActivate, %window_name%
	pastInNotion()
	return
}

;4----Last REGION------ SHARE X
lastRegionCapture(window_name) {
	clipboard := ""
	Send, ^+{PrintScreen}
	ClipWait,,1
	WinActivate, %window_name%
	pastInNotion()
	return
}

;5-----GIF REGION-----SHARE X
region_gif_record(window_name) {
	;CopyUrlAtCurrentTime()
	clipboard := ""
	Send, ^!{PrintScreen}
	ClipWait,, 1
	WinActivate, %window_name%
	pastInNotion()
	return
}
