; Ensure a single instance of the script
#SingleInstance Force

; Prompt the user to enter the number of minutes
InputBox, Minutes, Shutdown Timer, Enter the number of minutes until shutdown:

; Check if the user clicked Cancel or didn't enter a valid number
if (ErrorLevel or Minutes <= 0)
{
    MsgBox, Cancelled or invalid input. Exiting script.
    ExitApp
}

; Convert the input minutes to milliseconds
Milliseconds := Minutes * 60000
RemainingMilliseconds := Milliseconds

; Create a GUI to show the countdown timer and cancel button
Gui, Add, Text, vCountdown w300 h30 Center, The computer will shut down in %Minutes% minute(s).
Gui, Add, Button, gCancelShutdown w150 h30, Cancel Shutdown
Gui, Show, , Shutdown Timer

; Set a timer to update the countdown every second
SetTimer, UpdateCountdown, 1000

; Set a timer to execute the shutdown after the specified time
SetTimer, ExecuteShutdown, %Milliseconds%

return

; Define the UpdateCountdown label to update the GUI countdown timer
UpdateCountdown:
    Global RemainingMilliseconds
    RemainingMilliseconds -= 1000
    if (RemainingMilliseconds < 0)
        RemainingMilliseconds := 0
    RemainingMinutes := Floor(RemainingMilliseconds / 60000)
    RemainingSeconds := Floor((RemainingMilliseconds / 1000) - (RemainingMinutes * 60))
    GuiControl,, Countdown, The computer will shut down in %RemainingMinutes% minute(s) and %RemainingSeconds% second(s).

    ; If the timer reaches zero, stop updating the countdown
    if (RemainingMilliseconds <= 0)
    {
        SetTimer, UpdateCountdown, Off
    }
return

; Define the ExecuteShutdown label to shut down the computer
ExecuteShutdown:
    Gui, Destroy
    Shutdown, 9 ; Force shutdown without confirmation
return

; Define the CancelShutdown label to cancel the shutdown
CancelShutdown:
    SetTimer, ExecuteShutdown, Off
    SetTimer, UpdateCountdown, Off
    Gui, Destroy
    MsgBox, Shutdown has been cancelled.
    ExitApp
return
