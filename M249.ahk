﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

   
_auto := true

~LButton::autofire()
Numlock::_auto := ! _auto
F2::ExitApp

autofire()
{
global _auto
if _auto
{
Loop
{
if GetKeyState("LButton", "P"){
mouseXY(0, 1)
Sleep 60
}
else
break
} ;; loop
} ;; if
} ;; autofire()

mouseXY(x,y)
{
DllCall("mouse_event",uint,1,int,x,int,y,uint,0,int,0)
}