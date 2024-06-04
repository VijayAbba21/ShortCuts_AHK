#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.

; Open all windows at once
; chrome://version/

#SingleInstance force

#Include, initial_functions.ahk

initTwo(){
	;1 open tick 
    openTick()
    Move_Right()

	;2 open code ai
    open_Chrome_Default()
    Move_Right()

	;3 open 100xdev
    Sleep, 1000
    open_Chrome_Default_Cohort2()
    open_Notion()
    Move_Right()

	;4 open vscode
    open_VSCode()
    Move_Right()

    ; 5 
    Move_Right()

	;6 open ahk
    open_VSCode()
    Move_Right()

	;7 open Divine
    open_Chrome_Default_academy()
    Move_Right()
}

initTwo()