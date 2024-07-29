 
#Include, I_am_remote_software_developer.ahk

 ;     rewind     forward
rewind_video_5_seconds(window_name) {
	ActivateChromeByProfileEducation()
	;WinActivate, ahk_exe chrome.exe  ;ahk_exe msedge.exe
	send, z
	WinActivate, %window_name%
}

forward_video_5_seconds(window_name) {
	ActivateChromeByProfileEducation()
	;WinActivate, ahk_exe chrome.exe  ;ahk_exe msedge.exe
	send, x
	WinActivate, %window_name%
}


