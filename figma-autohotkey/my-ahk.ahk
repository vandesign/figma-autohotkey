#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance Force
EnLanguageCode := 0x4090409
UsedLanguage :=


#Include figma\figma.ahk

#if

RAlt::LAlt

; Func and var

SaveUsedKeyboardLayout()
{
  global UsedLanguage
  UsedLanguage := GetKeyboardLayout()
}

SetEnglishKeyboadLayout()
{
  global EnLanguageCode
  SetKeyboardLayout(EnLanguageCode)
}

SetUsedKeyboardLayout()
{
  global UsedLanguage
  SetKeyboardLayout(UsedLanguage)
}

GetKeyboardLayout()
{
  SetFormat, Integer, H
  WinGet, WinID,, A
  ThreadID:=DllCall("GetWindowThreadProcessId", "UInt", WinID, "UInt", 0)
  Return DllCall("GetKeyboardLayout", "UInt", ThreadID, "UInt")
}

SetKeyboardLayout(Language)
{
  PostMessage, 0x50,, Language,, A
}
