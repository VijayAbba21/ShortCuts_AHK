

Global SAPI := ComObjCreate("SAPI.SpVoice")


SVSFlagsAsync := SPF_ASYNC := 1 << 0
SVSFPurgeBeforeSpeak := SPF_PURGEBEFORESPEAK := 1 << 1

LAlt & s::
Send, ^c
Sleep, 100
SAPI.Speak(Clipboard, SVSFlagsAsync)
return

LAlt & h::
SAPI.Speak("", SVSFlagsAsync | SVSFPurgeBeforeSpeak)
return