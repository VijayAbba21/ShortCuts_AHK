cword := "// "
add_comment(){
	global cword
	Send, ^c
	Send, {Enter}
	Sleep, 100
	StringReplace c, ClipBoard, `n, `n%cword% , All
	ClipBoard := cword . (SubStr(c,-2)=cword ? SubStr(c,1,StrLen(c)-4) : c)
	Sleep, 100
	Send, ^v
	return
}

start_T := "/* "
end_T := "*/"
add_comment_to_start_and_end(){
	global start_T
	global end_T
	Send, ^c
	Send, {Enter}
	Sleep, 100
	Clipboard :=  "/*`n" . Clipboard . "`n*/"
	Sleep, 100
	Send, ^v
	return
}

