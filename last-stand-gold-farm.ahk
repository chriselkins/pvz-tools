#Requires AutoHotkey v2.0+
#Warn All
#SingleInstance Ignore

#Include "%A_ScriptDir%\last-stand-gold-farm.lib.ahk"

Loop
{
    PvzInit()
    FocusToPvz()
    LastStandGoldFarm()
}
