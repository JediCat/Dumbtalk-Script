;------------------------------------------------------------------------------
; DUMBTALK SCRIPT
;------------------------------------------------------------------------------
; a fun script made by Bambi Trisky for her fellow Bambi friends <3
; Conversion to AHK v2 and modifications done by LexiOfTheEvening
; The conversion added a few settings, but has also changed it into a general
; bimbo dumbtalk script. Current changes only de-Bambi the script, allowing
; any name; the underlying Bambi concepts remain.

version := 2.0
#Include %A_ScriptDir%\SubScripts\Utils\Settings.ahk

SetTitleMatchMode 2
handledApps := applicationHandled
Loop(handledApps.Length) {
    handledApp := handledApps[A_Index]
    GroupAdd "handledApps", handledApp
}
HotIfWinActive "ahk_group handledApps"

InstallKeybdHook
#SingleInstance force

Hotstring("EndChars", "-()[]{}:;`"/\,.?!`n`s`t")

;------------------------------------------------------------------------------
; SubScripts Imports
;------------------------------------------------------------------------------
; Order matters: Hotstrings in Includes at the bottom have a higher priority

; Helper Files
;FileInstall "verbList.csv", "verbList.csv", 1
;FileInstall "settings.ini", "settings.ini", 1

; Utils
#Include %A_ScriptDir%\SubScripts\Utils\Initializer.ahk
#Include %A_ScriptDir%\SubScripts\Utils\Functions.ahk

; Speech Modules
#Include %A_ScriptDir%\SubScripts\SpeechModules\CommonMistakes.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ContractionsFormal.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ContractionsInformal.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Pronouns.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Giggles.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\WordsReplacer.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\ThirdPersonVerbs.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\WordsRandomizer.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Phonetic.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\VerbsSynonyms.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\Punctuation.ahk
#Include %A_ScriptDir%\SubScripts\SpeechModules\SentencesInsertions.ahk

sleep 5000
reload
