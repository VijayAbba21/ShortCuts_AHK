 ;     rewind     forward
rewind_video_5_seconds(window_name) {
	ActivateChromeByProfile("Education")
	send, z
	WinActivate, %window_name%
}

forward_video_5_seconds(window_name) {
	ActivateChromeByProfile("Education")
	send, x
	WinActivate, %window_name%
}