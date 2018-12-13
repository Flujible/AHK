#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
TrayTip, AutoHotKey, Loaded %A_ScriptName%

; Env vars
chrome = Version 66
firefox = Version 59
ie = 11
windows = 10 Pro

; Reload this file
; Ctrl + 0
+^0::Reload

; Open Hyper terminal
; Ctrl + Alt + T
^!t::
EnvGet, ProgramData, ProgramData
Run, "C:\Users\gbryant\AppData\Local\hyper\Hyper.exe"
return

;Shorthand
:*:cos ::because{space}
:*:ttyl::talk to you later
:*:!email::george`.s`.bryant`@gmail`.com
:*:!wemail::george`.bryant`@heathwallace`.com
:*:!memail::george`.bryant`@mirumagency`.com

;Lenny faces
:*:!dis::ಠ_ಠ
:*:!lenny::( ͡° ͜ʖ ͡°)
:*:!shrug::乁(⸟ᨎ⸟)ㄏ
:*:!2shrug::¯\_(ツ)_/¯
:*:!flip::(╯°□°）╯︵ ┻━┻
:*:!remorse::┬─┬ノ( óᨓòノ)
:*:!regret::┬─┬ノ( óᨓòノ)
:*:!0`.o::|๏⍘๏|
:*:!fight::(ง ͡°⏠ ͡°)ง
:*:!angryBoner::ヽ(ò╭∩╮ó)ﾉ
:*:!strong::ᕙ(๏_๏)ᕗ
:*:!yata::୧^ᗜ^୨
:*:!cool::ᕙ(◥▶.◀◤)ᕗ
:*:!dick::╭∩╮
:*:!RL::
	WinHTTP := ComObjCreate("WinHTTP.WinHttpRequest.5.1")
	;~ WinHTTP.SetProxy(0)
	WinHTTP.Open("GET", "http://lenny.today/api/v1/random?limit=1", 0)
	WinHTTP.SetRequestHeader("Content-Type", "application/json")
	WinHTTP.Send()
	Result := WinHTTP.ResponseText
	Status := WinHTTP.Status
	If (Status == 200)
	{
		RegExMatch(Result, "face"":""(.*)""", Match)
		StringReplace, Match1, Match1, \\, \, All
		SendRaw %Match1%
	}
	return

; Memes
:*:!rekt::
	Send ``````
	Send (             ){Enter}
	Send )\ )       ( /(   *   ){Enter}
	Send (()/( (     )\())` )  /({Enter}
	Send /(_)))\  |((_)\  ( )(_)){Enter}
	Send (_)) ((_) |_ ((_)(_(_()){Enter}
	Send | _ \| __|| |/ / |_   _|{Enter}
	Send |   /| _|   ' <    | |{Enter}
	Send |_|_\|___| _|\_\   |_|
	return

; JIRA Shorthand
:*:!bug::
	Send h2`. To recreate {Enter}
	Send {#} Steps{Enter 3}
	Send h2`. Expected {Enter 3}
	Send h2`. Actual {Enter}
	Send {Up 5}{Left}+^{Left}
	return

:*:!dpasqa::
	Send h2`. Environment {Enter}
	Send QA{Enter 2}
	Send h2`. Browsers {Enter}
	Send Google Chrome %chrome% {Enter}
	Send Microsoft Internet Explorer %ie%{Enter 2}
	Send h2`. Operating System{Enter}
	Send Windows %windows%
	Return

:*:!env::
	Send h2`. Environment {Enter}
	Send QA {Enter 2}
	Send h2`. Browsers {Enter}
	Send Browsers {Enter 2}
	Send h2`. Operating System{Enter}
	Send Windows %windows%
	Send {Up 3}{Left}+^{Left}
	Return

:*:!chrome::
	Send Google Chrome %chrome%
	return


:*:!Firefox::
	Send Firefox %firefox%
	return

:*:!ie::
	Send IE%ie%
	return

:*:!done::This is now working as expected, marking as 'Done'
