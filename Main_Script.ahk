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

RAlt & ,::
Send, #^{Left}
return

RAlt & .::
Send, #^{Right}
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


;--------------------------------- Capturing

; Capture a Region: Alt + S  (ShareX)
LAlt & s::
clipboard := ""
region_screeenshort("ahk_exe Notion.exe")
return

; Capture a Region: Alt + R  (GreenShort)
LAlt & r::
clipboard := ""
region_screeenshort_GreenShort("ahk_exe Notion.exe")
return

; Capture a Region: Alt + E  (iTop)
LAlt & e::
clipboard := ""
region_screeenshort_itop("ahk_exe Notion.exe")
return

;Last Region: Alt + F (ShareX)
LAlt & w::
clipboard := ""
lastRegionCapture("ahk_exe Notion.exe")
return

LAlt & f::
; Copy_Subtitles_to_notion()
Copy_Subtitles_to_notion_2()
return

;Gif: Alt + G (ShareX)
LAlt & g::
Clipboard := ""
region_gif_record("ahk_exe Notion.exe")
return

; video Alt + v  (shareX)
LAlt & d::
region_video_record("ahk_exe Notion.exe")
return

;Extract text: LAlt &  T (Power toyes)
LAlt & t::
extract_text("ahk_exe Notion.exe")
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

;copy to Notion
LAlt & c::
copy_to_notion()
return

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

::.t::
Send, /togg{Enter}
return

::.tc::
Send, /togg
Sleep, 200
Send, {Enter}
Sleep, 200
Clipboard=%Clipboard%
Sleep, 200
Send, ^v
return

LAlt & v::
copy_to_vs_code()
return


!LButton::
select_a_word()
Sleep, 100
Send, ^b
Sleep, 100
Send, ^+H
return


;Set Heading
::H.1::
addHeading2AndDividerInNotion(1)
return

::H.2::
addHeading2AndDividerInNotion(2)
return

::H.3::
addHeading2AndDividerInNotion(3)
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
copy_to_notion()
return

; add /*   */
LAlt & 6::
add_comment_to_start_and_end()
return

;; Live Server
::li-ser::
live_server()
return

::dup::
duplicate_workspace()

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

;**********Acrobat**********

#If, WinActive("ahk_exe Acrobat.exe")


;rewind
LAlt & ,::
rewind_video_5_seconds("ahk_exe Acrobat.exe")
return

;forward
LAlt & .::
forward_video_5_seconds("ahk_exe Acrobat.exe")
return


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