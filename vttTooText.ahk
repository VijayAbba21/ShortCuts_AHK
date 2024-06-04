; Function to convert WebVTT to plain text
vttToPlainText(vttContent) {
    ; Remove timestamps, line numbers, and other metadata
    Loop, Parse, vttContent, `n
    {
        if !(RegExMatch(A_LoopField, "^\d+:?\d+:\d+\.\d+ --> \d+:?\d+:\d+\.\d+$") or RegExMatch(A_LoopField, "^\d+$"))
        {
            plainText .= A_LoopField " "
        }
    }
    ; Return plain text
    return plainText
}

; Example usage

!c::
Send, ^c
Sleep, 100
vttContent := Clipboard
plainText := vttToPlainText(vttContent)
Clipboard := % plainText
return