
targetWindowTitle := "Live Captions"

WinGetText, capturedText, %targetWindowTitle%

MsgBox, % capturedText