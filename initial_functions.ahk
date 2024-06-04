

openTick() {
	Run, C:\Program Files (x86)\TickTick\TickTick.exe
}

open_Chrome() {
 Run, chrome.exe --profile-directory="Default"  
 return
}

open_Chrome_Default() {
 Run, chrome.exe --profile-directory="Default" https://codedamn.com/ai
 return
}

open_Chrome_Default_Cohort2() {
 Run, chrome.exe --profile-directory="Default" https://app.100xdevs.com/courses/3
 return
}

open_Chrome_Default_academy() {
 Run, chrome.exe --profile-directory="Profile 2" https://academy.pillaicenter.com/members/141035/course/
 return
}

;SCREEN 1
open_Edge(){
	Run, msedge.exe
	return
}

open_VSCode() {
	Run, C:\Users\abbav\AppData\Local\Programs\Microsoft VS Code\Code.exe
	return
}

;SCREEN 2
open_Chrome_minimal() {
 Run, chrome.exe --profile-directory="Profile 4"
 Return
}

open_Notion() {
	Run, C:\Users\abbav\AppData\Local\Programs\Notion\Notion.exe
	return
}

open_PostMan() {
	Run, C:\Users\abbav\AppData\Local\Postman\Postman.exe
	return
}

; SCREEN 3
Brave_Mediations(){
	Run, brave.exe C:\Users\abbav\OneDrive\Documents\4.Mediations\Mediation_Project\app.html
	Run, brave.exe  file:///D:/1.Udemy/2.node-practice/Practice/mediationpage/index.html
	return
}

Pomodoro_Logger() {
	Run, "C:\Users\abbav\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Pomodoro Logger.lnk"
	return
}


Move_Right() {
	Sleep, 1500
	Send, #^{Right}
}



init() {

	;Virtural Desktop 1


	Move_Right()
	;Virtural Desktop 2
	open_Edge()
	Move_Right()
	;Virtural Desktop 3
	open_VSCode()
	Move_Right()
	;Virtural Desktop 4
	open_PostMan()
	Move_Right()
	;Virtural Desktop 5
	Pomodoro_Logger()
	Brave_Mediations()
	Move_Right()

	Send, #^{Left}
	; SCREEN 3
	Brave_Mediations()
	Pomodoro_Logger()
	Sleep, 2000

	Send, #^{Left}

	Sleep, 500
	Send, #^{Left}
	;SCREEN 1

	open_VSCode()
	Sleep, 500
	open_PostMan()
	Sleep, 500

	Sleep, 3000
	Send, #^{Right}
	;SCREEN 2
	open_VSCode()
	open_Chrome_minimal()
	open_Notion()Button

}


