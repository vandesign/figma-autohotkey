/*
# Win (Windows logo key)
! Alt
^ Control
+ Shift
https://www.autohotkey.com/docs/KeyList.htm
*/

; Figma =========================

#if WinActive("ahk_exe Figma.exe")

; Figma Shortcuts Setup

    ; View ======================

    !q::FC("fro")               ; [Frame Outlines]
    !w::FC("lgr")               ; [Layout Grids]
    !e::FC("sou")               ; [Show Outlines]
    !r::FC("shu")               ; [Show/Hide UI]
    !a::FC("pxw")               ; [Pixel Preview]
    ^1::FC("ztf")               ; [Zoom to Fit]
    ^2::FC("zts")               ; [Zoom to Selection]
    ^3::FC("zt1")               ; [Zoom to 100%]
    !SC029::FC("nxtp")          ; [Next Page] Alt+`

    ; Object ====================

    ^f::FC("frsli")             ; [Frame Selection]
    ^SC034::FC("gtms")          ; [Go to Master Component] Ctrl+.
    ^SC033::RTI()               ; [Return to Instance*] Ctrl+,
    ^-::FC("shhsl")             ; [Show/Hide Selection]
    ^=::FC("lkul")              ; [Lock/Unlock Selection]

	; Vector ====================

    ^+j::FC("sthj")             ; [Smooth Join Selection]

	; Arrange ===================

    !Left::FC("aglt")           ; [Align Left]
    ^!Left::FC("aghc")          ; [Align Horizontal Centers]
    ^!Right::FC("aghc")         ; [Align Horizontal Centers]
    !Right::FC("agrt")          ; [Align Right]
    !Up::FC("agtp")             ; [Align Top]
    ^!Up::FC("agvc")            ; [Align Vertical Centers]
    ^!Down::FC("agvc")          ; [Align Vertical Centers]
    !Down::FC("agbt")           ; [Align Bottom]
    !+Right::FC("dhzp")         ; [Distribute Horizontal Spacing]
    !+Left::FC("dhzp")          ; [Distribute Horizontal Spacing]
    !+Up::FC("dvlp")            ; [Distribute Vertical Spacing]
    !+Down::FC("dvlp")          ; [Distribute Vertical Spacing]
    ^#!Left::FC("pkhz")         ; [Pack Horizontal]
    ^#!Right::FC("pkhz")        ; [Pack Horizontal]
    ^#!Up::FC("pkvt")           ; [Pack Vertical]
    ^#!Down::FC("pkvt")         ; [Pack Vertical]

    ; Plug-ins ==================

    ^p::FC("rlp")               ; [Run Last Plugin]
    !p::FC("rb")                ; [Resize Button]

    ; Other =====================

    Escape::FC("slpar")         ; [Select Parent]

;===========================================================================================

; Figma Commands

FC(Command)
{
    SaveUsedKeyboardLayout()
    SetEnglishKeyboadLayout()
    Sleep, 100
    SendInput, ^/
    Sleep, 100
    SendInput, %Command%
    SendInput, {Enter}
    SetUsedKeyboardLayout()
}

RTI()
{
    ImageSearch, xp, yp, 0, 0, A_ScreenWidth, A_ScreenHeight, *50, figma\ReturnToInstance.png
    ControlClick, x%xp% y%yp%,
    SendInput, {RCtrl up}{LCtrl up}
    Return
}

RAlt & vk07::return
RAlt::Send {LAlt}
