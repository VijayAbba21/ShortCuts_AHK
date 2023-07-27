; https://www.autohotkey.com/boards/viewtopic.php?style=7&t=94869
ActivateChromeByProfile(target_profile) {
    static acc_lib := Acc_Init()
    WinGet, ChromeWindow, List, ahk_exe chrome.exe
    Loop % ChromeWindow
    {
        this_hwnd := ChromeWindow%A_Index%
        if (Chrome_GetProfile(this_hwnd) == target_profile) {
            WinActivate % "ahk_id " this_hwnd
            break
        }
    }
}

;!l::ActivateChromeByProfile("Education")

Chrome_GetProfile(hwnd:=""){
	If !hwnd
    	hwnd := WinActive("A")
    try {
        title := Acc_ObjectFromWindow(hwnd).accName
        RegExMatch(title, "^.+Google Chrome . .*?([^(]+[^)]).?$", match)
        return match1
    } catch {
        return ""
    }
}

Acc_Init() {
    static h := DllCall("LoadLibrary", Str,"oleacc", Ptr)
}

Acc_ObjectFromWindow(hwnd, objectId := 0) {
    static OBJID_NATIVEOM := 0xFFFFFFF0

    objectId &= 0xFFFFFFFF
    If (objectId == OBJID_NATIVEOM)
        riid := -VarSetCapacity(IID, 16) + NumPut(0x46000000000000C0, NumPut(0x0000000000020400, IID, "Int64"), "Int64")
    Else
        riid := -VarSetCapacity(IID, 16) + NumPut(0x719B3800AA000C81, NumPut(0x11CF3C3D618736E0, IID, "Int64"), "Int64")

    If (DllCall("oleacc\AccessibleObjectFromWindow", Ptr,hwnd, UInt,objectId, Ptr,riid, PtrP,pacc:=0) == 0)
        Return ComObject(9, pacc, 1), ObjAddRef(pacc)
}
