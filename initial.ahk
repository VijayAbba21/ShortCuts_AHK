#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#SingleInstance force

open_mediations() {
	Explorer = %A_WinDir%\explorer.exe /n,/e,
	Folder = C:\Users\abbav\OneDrive\Documents\4.Mediations\Focus Meditation\Laser Focus
	Run, %Explorer%"%Folder%"
	Sleep, 800
	return
}

open_Chrome() {
 Run, chrome.exe --profile-directory="Default" https://www.udemy.com/course/the-complete-javascript-course/learn/lecture
 Run, chrome.exe --profile-directory="Default" https://www.notion.so/Daily-Plan-4d6fcfbd33d2482b935c3755fc983aac
 ;Run, chrome.exe --profile-directory="Default" https://marinaratimer-experiments.vercel.app/timer/xDXN4NTd
 return
}

open_Chrome_minimal() {
 Run, chrome.exe --profile-directory="Profile 4"
 Return
}

open_VSCode() {
	Run, C:\Users\abbav\AppData\Local\Programs\Microsoft VS Code\Code.exe
	return
}

open_Notion() {
	Run, C:\Users\abbav\AppData\Local\Programs\Notion\Notion.exe
	return
}

init_() {
	open_mediations()
	Sleep, 1000
	;Send, #{Left}
	Sleep, 200
	Send, #^{Left}
    open_Chrome_minimal()
	Sleep, 300
	Send, #^{Left}
	Sleep, 300
	open_Chrome()
	Sleep, 200
	open_Chrome_minimal()
	Sleep, 200
	open_VSCode()
	Sleep, 200
	open_Notion()
	return
}

init_()
