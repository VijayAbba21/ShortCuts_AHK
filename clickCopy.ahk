#SingleInstance Force ; Ensures only one instance of the script is running

; Define the coordinates where you want to click
Click_X := 1500
Click_Y := 490

Click_XX := 1420
Click_YY := 750


; Define the function to perform the click action
PerformClick() {
	global
	WinActivate, ahk_exe chrome.exe
	Sleep, 6000
    Click, %Click_X% , %Click_Y%
	Sleep, 6000
	Click,  %Click_XX% , %Click_YY%
}

; Define the main function to execute the action for a specified number of iterations
ExecuteIterations(Iterations) {
    Loop, % Iterations {
        PerformClick()
        Sleep, 1000 ; Adjust this delay if needed
    }
}

; Define a hotkey to trigger the execution
^+x::
    InputBox, Iterations, Iterations, Enter the number of iterations you want to perform:
    If ErrorLevel
        return  ; User pressed Cancel
    Else If Iterations is not integer
    {
        MsgBox, Please enter a valid number.
        return
    }
    Else
        ExecuteIterations(Iterations)
return

^+z::
ExitApp
return
