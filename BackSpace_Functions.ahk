;  ------------------------Selects  one  line  and  backspace
backspace_left()  {
	Send,  {Shift  Down}
	Send,  {Home}
	Send,  {Shift  Up}
	Send,  {Backspace}
	return
}

;  ------------------------Selects  one  line  and  backspace
backspace_right()  {
	Send,  {Shift  Down}
	Send,  {End}
	Send,  {Shift  Up}
	Send,  {Backspace}
	return
}

;  ------------------------  Cut  a  word

cuting_a_word()  {
	Send,  ^{Left}
	Sleep, 100
	Send,  ^+{Right}
	Send,  ^x
	return
}

copy_a_word() {
	Send,  ^{Left}
	Sleep, 100
	Send,  ^+{Right}
	Send,  ^c
	return
}

select_a_word() {
	Send,  ^{Left}
	Sleep, 100
	Send,  ^+{Right}
}