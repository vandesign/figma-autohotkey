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

		!q::FC("fro")				; [Frame Outlines]				| Mac (View ; Frame Outlines) Alt+Q
		!w::FC("lgr")				; [Layout Grids]					| Mac (View ; Show Layout Grids) Alt+W
		!e::FC("sou")				; [Show Outlines]					| Mac (View ; Show Outlines) Alt+E
;fix Mac
		!r::FC("shu")				; [Show/Hide UI]					| Mac (View ; Show UI) Alt+R
		!a::FC("pxw")				; [Pixel Preview]					| Mac (View ; Pixel Preview) Alt+A
		^1::FC("ztf")				; [Zoom to Fit]						| Mac (View ; Zoom to Fit) Cmd+1
		^2::FC("zts")				; [Zoom to Selection]			| Mac (View ; Zoom to Selection) Cmd+2
		^3::FC("zt1")				; [Zoom to 100%]					| Mac (View ; Zoom to 100%) Cmd+3
;fix Mac
		!SC029::FC("nxtp")	; [Next Page] ALt+`				| Mac (View ; Next Page) Alt+

	; Object ====================

		^f::FC("frsli")			; [Frame Selection]				| Mac (Object ; Frame Selection) Cmd+F
		^SC034::FC("gtms")	; [Go to Master Component] Ctrl+.	| Mac (Object ; Master Component ; Go to Master Component) Cmd+.
		^SC033::RTI()				; [Return to Instance*] Ctrl+,		| Mac (Return to Instance*) Cmd+,
;fix Mac
		^-::FC("shhsl")			; [Show/Hide Selection] 			| Mac (Object ; Show/Hide Selection) Ctrl+-
;fix Mac
		^=::FC("lkul")			; [Lock/Unlock Selection] 			| Mac (Object ; Lock/Unlock Selection) Ctrl+=

	; Vector ====================

		^+j::FC("sthj")			; [Smooth Join Selection]

	; Arrange ===================

		!Left::FC("aglt")		; [Align Left]						| Mac (Arrange ; Align Left) Alt+Left
		^!Left::FC("aghc")		; [Align Horizontal Centers]		| Mac (Arrange ; Align Horizontal Centers) Alt+Cmd+Left
		^!Right::FC("aghc")		; [Align Horizontal Centers]		| Mac (Arrange ; Align Horizontal Centers) Alt+Cmd+Right
		!Right::FC("agrt")		; [Align Right]						| Mac (Arrange ; Align Right) Alt+Right
		!Up::FC("agtp")			; [Align Top]						| Mac (Arrange ; Align Top) Alt+Top
		^!Up::FC("agvc")		; [Align Vertical Centers]			| Mac (Arrange ; Align Vertical Centers) Alt+Cmd+Up
		^!Down::FC("agvc")		; [Align Vertical Centers]			| Mac (Arrange ; Align Vertical Centers) Alt+Cmd+Down
		!Down::FC("agbt")		; [Align Bottom]					| Mac (Arrange ; Align Bottom) Alt+Down
		!+Right::FC("dhzp")		; [Distribute Horizontal Spacing]	| Mac (Arrange ; Distribute Horizontal Spacing) Alt+Shift+Right
		!+Left::FC("dhzp")		; [Distribute Horizontal Spacing]	| Mac (Arrange ; Distribute Horizontal Spacing) Alt+Shift+Left
		!+Up::FC("dvlp")		; [Distribute Vertical Spacing]		| Mac (Arrange ; Distribute Vertical Spacing) Alt+Shift+Top
		!+Down::FC("dvlp")		; [Distribute Vertical Spacing]		| Mac (Arrange ; Distribute Vertical Spacing) Alt+Shift+Down
		^#!Left::FC("pkhz")		; [Pack Horizontal]					| Mac (Arrange ; Pack Horizontal) Ctrl+Alt+Cmd+Left
		^#!Right::FC("pkhz")	; [Pack Horizontal]					| Mac (Arrange ; Pack Horizontal) Ctrl+Alt+Cmd+Right
		^#!Up::FC("pkvt")		; [Pack Vertical]					| Mac (Arrange ; Pack Vertical) Ctrl+Alt+Cmd+Up
		^#!Down::FC("pkvt")		; [Pack Vertical]					| Mac (Arrange ; Pack Vertical) Ctrl+Alt+Cmd+Down

	; Plug-ins ==================

		^p::FC("rlp")			; [Run Last Plugin] 				| Mac (Plugins ; Run Last Plugin) Cmd+P
		!p::FC("rb")			; [Resize Button]					| Mac (Plugins ; Button Resizer ; Resize Button) Alt+P

	; Other =====================

		Escape::FC("slpar")		; [Select Parent]					| Mac (Select Parent) Escape


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
