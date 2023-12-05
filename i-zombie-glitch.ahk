#Requires AutoHotkey v2.0+
#Warn All
#SingleInstance Off

#Include "%A_ScriptDir%\pvz.ahk"

howManyBungieZombies := 10
flowerRow := 5
flowerColumn := 4
delay := 11

PvzGui := Gui(, "I, Zombie Endless Glitch")

PvzGui.Add("Text",, "Number of Bungie zombies:")
PvzGui.Add("Text",, "Sunflower row:")
PvzGui.Add("Text",, "Sunflower column:")
PvzGui.Add("Text",, "Click delay (ms):")

PvzGui.Add("Edit", "vZombies ym", "10")
PvzGui.Add("Edit", "vRow", "1")
PvzGui.Add("Edit", "vCol", "1")
PvzGui.Add("Edit", "vDelay", "11")

PvzGui.Add("Button", "default", "OK").OnEvent("Click", ProcessUserInput)
PvzGui.OnEvent("Close", ProcessUserQuit)

PvzGui.Show()

ProcessUserInput(*)
{
    global howManyBungieZombies, flowerRow, flowerColumn, delay, PvzGui

    local Saved := PvzGui.Submit()

    howManyBungieZombies := Integer(Saved.Zombies)
    flowerRow := Integer(Saved.Row)
    flowerColumn := Integer(Saved.Col)
    delay := Integer(Saved.Delay)

    iZombieGlitch()

    ExitApp 0
}

ProcessUserQuit(*)
{
    ExitApp 1
}

iZombieGlitch()
{
    global howManyBungieZombies, flowerRow, flowerColumn, Delay

    PvzInit(delay)
    FocusToPvz()
    ResumeGame()

    Sleep 250

    Loop howManyBungieZombies
    {
        ChooseSlot(5)
        ClickLawn(flowerRow, flowerColumn)
    }

    Sleep 8000

    local count := 8 * howManyBungieZombies

    Loop count
    {
        ClickLawn(flowerRow, flowerColumn)
    }

    Loop 8
    {
        ClickLawn(flowerRow, flowerColumn+1)
    }
}
