#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force


#Include,  BackSpace_Functions.ahk
#Include,  Capturing_Functions.ahk
#Include, Chrome_Profile.ahk
#Include, comments_functions.ahk
#Include, Copying_functions.ahk
#Include, Notions_functions.ahk
#Include, Rewind_Forward.ahk
#Include, All_hot_strings.ahk

/*
           _      _
     /\   | |    | |
    /  \  | |    | |
   / /\ \ | |    | |
  / ____ \| |____| |____
 /_/    \_\______|______|

*/

/*
RELOAD
*/
!Esc::
Reload, C:\Users\abbav\OneDrive\Documents\5.Automation_scripts\Notion\Main_Script.ahk
return 

;************************

LAlt & q::
generate_url_meanings()
return

;**********************************************************
LAlt & b::
backspace_left()
return

LAlt & n::
backspace_right()
return

LAlt & m::
backspace_left()
backspace_right()
return

LAlt & x::
cuting_a_word()
return

LAlt & a::
copy_a_word()
return

;--------------------------------- window actives

RAlt & c::
ActivateChromeByProfile("Education")
; WinActivate, ahk_exe msedge.exe
return

RAlt & m::
ActivateChromeByProfile("Minimal")
; WinActivate, ahk_exe chrome.exe
return

RAlt & v::
WinActivate, ahk_exe Code.exe
return

RAlt & n::
WinActivate, ahk_exe Notion.exe
return

RAlt & p::
WinActivate, ahk_exe Postman.exe
return

RAlt & t::
WinActivate, ahk_exe WindowsTerminal.exe
return

RAlt & d::
WinActivate, ahk_exe MongoDBCompass.exe
return

RAlt & i::
WinActivate, ahk_exe msrdc.exe
return

/*
   ______ _
  / ____| |
 | |    | |__  _ __ ___  _ __ ___   ___
 | |    | '_ \| '__/ _ \| '_ ` _ \ / _ \
 | |____| | | | | | (_) | | | | | |  __/
  \_____|_| |_|_|  \___/|_| |_| |_|\___|

*/
;**********CHROME START**********


#If, WinActive("ahk_exe chrome.exe")


LAlt & v::
copy_to_vs_code()
return

;rewindahk_exe chrome.exe
LAlt & ,::
ActivateChromeByProfile("Education")
send, z
WinActivate, ahk_exe chrome.exe
return

;forward 3 sec
LAlt & .::
ActivateChromeByProfile("Education")
send, x
WinActivate, ahk_exe chrome.exe
return


/*
  _   _       _   _
 | \ | |     | | (_)
 |  \| | ___ | |_ _  ___  _ __
 | . ` |/ _ \| __| |/ _ \| '_ \
 | |\  | (_) | |_| | (_) | | | |
 |_|_\_|\___/ \__|_|\___/|_| |_|
*/

#If, WinActive("ahk_exe Notion.exe")

LAlt & v::
copy_to_vs_code()
return

!h::
addBoldAndUnderlineAndRed()
return

;rewind
LAlt & ,::
rewind_video_5_seconds("ahk_exe Notion.exe")
return

;forward
LAlt & .::
forward_video_5_seconds("ahk_exe Notion.exe")
return

;---


/*
 __      _______    _____          _
 \ \    / / ____|  / ____|        | |
  \ \  / / (___   | |     ___   __| | ___
   \ \/ / \___ \  | |    / _ \ / _` |/ _ \
    \  /  ____) | | |___| (_) | (_| |  __/
     \/  |_____/   \_____\___/ \__,_|\___|
*/


;**********VS Code Start**********

#If, WinActive("ahk_exe Code.exe")

:*:jsli:://////////////////////////////////////////////////
:*:jscm::/* {Enter} */ {Left 4}

;copy to Notion
LAlt & c::
copy_to_notion_3()
return

; add /*   */
LAlt & 6::
add_comment_to_start_and_end()
return

;rewind
LAlt & ,::
rewind_video_5_seconds("ahk_exe Code.exe")
return

;forward
LAlt & .::
forward_video_5_seconds("ahk_exe Code.exe")
return


;**********VS Code END**********


;********************POSTMAN***************************

#If, WinActive("ahk_exe Postman.exe")

;rewind
LAlt & ,::
rewind_video_5_seconds("ahk_exe Postman.exe")
return

;forward
LAlt & .::
forward_video_5_seconds("ahk_exe Postman.exe")
return

;********************WindowsTerminal***************************

#If, WinActive("ahk_exe WindowsTerminal.exe")

;rewind
LAlt & ,::
rewind_video_5_seconds("ahk_exe WindowsTerminal.exe")
return

;forward
LAlt & .::
forward_video_5_seconds("ahk_exe WindowsTerminal.exe")
return

;**********************************quick search

;********************Chrome Ubuntu***************************


#If, WinActive("ahk_exe msrdc.exe")

;rewind
LAlt & ,::
rewind_video_5_seconds("ahk_exe msrdc.exe")
return

;forward
LAlt & .::
forward_video_5_seconds("ahk_exe msrdc.exe")
return