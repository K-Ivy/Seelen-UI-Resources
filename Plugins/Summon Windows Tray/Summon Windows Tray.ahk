#Requires AutoHotkey v2.0
#SingleInstance Force

IniFile := A_ScriptDir "\tray-summon-settings.ini"
if !FileExist(IniFile) {
    MsgBox(
        "The settings ini cannot be found:`n"
      . "Please get/create it and place it in the same folder as this script!",
        "Tray Summon",
        "Iconx"
    )
    ExitApp
}
ReadSettings(file) {
    s := {}
    s.TrayMoveX      := IniRead(file, "Settings", "TrayMoveX", 500) + 0
    s.TrayMoveY      := IniRead(file, "Settings", "TrayMoveY", 50) + 0
    s.SummonHotkey   := Trim(IniRead(file, "Settings", "SummonHotkey", "!s"))
    s.WindowsVersion := IniRead(file, "Settings", "WindowsVersion", 11) + 0
    s.TrayWinWait    := IniRead(file, "Settings", "TrayWinWait", 4) + 0
    s.ShortcutWait   := IniRead(file, "Settings", "ShortcutWait", 50) + 0
    ; Determine tray window class
    s.WinClass := (s.WindowsVersion = 11)
        ? "ahk_class TopLevelWindowForOverflowXamlIsland"
        : "ahk_class NotifyIconOverflowWindow"
    return s
}
settings := ReadSettings(IniFile)

; -------------------------------------------------------------
; * After first launch, any subsequent launches sends a message 
; * to the first instance to summon the tray again and closes.
; -------------------------------------------------------------
DetectHiddenWindows(true)
try {
    if hwnd := WinExist(A_ScriptFullPath " ahk_class AutoHotkey") {
        if hwnd != A_ScriptHwnd {
            SendSummonMessage(hwnd)
            ExitApp
        }
    }
} finally {
    DetectHiddenWindows(false)
}
OnMessage(0x4A, ReceiveMessage)
SummonTray() ; Summon on first launch

; -------------------------------------------------------------
Hotkey(settings.SummonHotkey, (*) => SummonTray())
Esc::HideTray()
; -------------------------------------------------------------
SummonTray() {
    s := settings
    SendInput "#b"
    Sleep s.ShortcutWait
    SendInput "{Enter}"
    hwnd := WinWait(s.WinClass, , s.TrayWinWait)
    if !hwnd
        return
    if MoveWindow(hwnd, s.TrayMoveX, s.TrayMoveY)
        WinActivate(hwnd)
}
HideTray() {
    if hwnd := WinExist(settings.WinClass)
        WinHide(hwnd)
}

MoveWindow(hwnd, x, y) {
    static rect := Buffer(16)
    if !DllCall("GetWindowRect", "Ptr", hwnd, "Ptr", rect.Ptr)
        return false
    w := NumGet(rect, 8, "Int") - NumGet(rect, 0, "Int")
    h := NumGet(rect, 12, "Int") - NumGet(rect, 4, "Int")
    return DllCall("MoveWindow", "Ptr", hwnd, "Int", x, "Int", y, "Int", w, "Int", h, "Int", true) != 0
}

SUMMON_MSG := "summon"
SendSummonMessage(hwnd) {
    CDS := Buffer(A_PtrSize*3, 0)
    NumPut("UPtr", StrPtr(SUMMON_MSG), CDS, A_PtrSize)
    NumPut("UInt", StrLen(SUMMON_MSG) * 2, CDS, A_PtrSize*2)
    DllCall("SendMessage", "Ptr", hwnd, "UInt", 0x4A, "Ptr", 0, "Ptr", CDS.Ptr)
}
ReceiveMessage(wParam, lParam, msg, hwnd) {
    if (StrGet(NumGet(lParam + A_PtrSize, "UPtr"), "UTF-16") = SUMMON_MSG)
        SummonTray()
}