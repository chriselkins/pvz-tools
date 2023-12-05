#Requires AutoHotkey v2.0+
#Warn All

#Include "%A_ScriptDir%\pvz.ahk"

; gold garm on last stand

LastStandGoldFarm()
{
    StartLastStand()

    ; choose plants
    local marigold := ChoosePlant("Marigold")
    local fume := ChoosePlant("Fume-shroom")
    local coffee := ChoosePlant("Coffee Bean")
    local garlic := ChoosePlant("Garlic")
    local pumpkin := ChoosePlant("Pumpkin")
    local lily := ChoosePlant("Lily Pad")
    local gloom := ChoosePlant("Gloom-shroom")
    local magnet := ChoosePlant("Magnet-shroom")
    local goldmagnet := ChoosePlant("Gold Magnet")
    local spikeweed := ChoosePlant("Spikeweed")

    Sleep 500

    ; start game
    LetsRock()

    ; place plants on lawn
    Sleep 3000

    ; place lily pads
    PlacePlant(lily, 3, 1)
    PlacePlant(lily, 3, 2)
    PlacePlant(lily, 3, 3)
    PlacePlant(lily, 3, 4)
    PlacePlant(lily, 3, 5)
    PlacePlant(lily, 4, 1)
    PlacePlant(lily, 4, 2)
    PlacePlant(lily, 4, 3)
    PlacePlant(lily, 4, 4)
    PlacePlant(lily, 4, 5)

    ; place magnets
    PlacePlant(magnet, 2, 4)
    PlacePlant(magnet, 5, 4)

    ; place garlic
    PlacePlant(garlic, 2, 8)
    PlacePlant(garlic, 2, 9)
    PlacePlant(garlic, 5, 8)
    PlacePlant(garlic, 5, 9)

    ; place fume shrooms
    PlacePlant(fume, 2, 5)
    PlacePlant(fume, 2, 6)
    PlacePlant(fume, 2, 7)
    PlacePlant(fume, 5, 5)
    PlacePlant(fume, 5, 6)
    PlacePlant(fume, 5, 7)

    ; place marigolds
    PlacePlant(marigold, 1, 1)
    PlacePlant(marigold, 1, 2)
    PlacePlant(marigold, 1, 3)
    PlacePlant(marigold, 1, 4)
    PlacePlant(marigold, 1, 5)
    PlacePlant(marigold, 2, 1)
    PlacePlant(marigold, 2, 2)
    PlacePlant(marigold, 2, 3)
    PlacePlant(marigold, 3, 1)
    PlacePlant(marigold, 3, 2)
    PlacePlant(marigold, 3, 3)
    PlacePlant(marigold, 3, 4)
    PlacePlant(marigold, 3, 5)
    PlacePlant(marigold, 4, 1)
    PlacePlant(marigold, 4, 2)
    PlacePlant(marigold, 4, 3)
    PlacePlant(marigold, 4, 4)
    PlacePlant(marigold, 4, 5)
    PlacePlant(marigold, 5, 1)
    PlacePlant(marigold, 5, 2)
    PlacePlant(marigold, 5, 3)
    PlacePlant(marigold, 6, 1)
    PlacePlant(marigold, 6, 2)
    PlacePlant(marigold, 6, 3)
    PlacePlant(marigold, 6, 4)
    PlacePlant(marigold, 6, 5)

    ; place pumpkins
    PlacePlant(pumpkin, 1, 5)
    PlacePlant(pumpkin, 6, 5)
    PlacePlant(pumpkin, 3, 4)
    PlacePlant(pumpkin, 3, 5)
    PlacePlant(pumpkin, 4, 4)
    PlacePlant(pumpkin, 4, 5)

    ; place gold magnets
    PlacePlant(goldmagnet, 2, 4)
    PlacePlant(goldmagnet, 5, 4)

    ; place gloom shrooms
    PlacePlant(gloom, 2, 5)
    PlacePlant(gloom, 2, 6)
    PlacePlant(gloom, 2, 7)
    PlacePlant(gloom, 5, 5)
    PlacePlant(gloom, 5, 6)
    PlacePlant(gloom, 5, 7)

    ; place coffee beans
    PlacePlant(coffee, 2, 5)
    PlacePlant(coffee, 2, 6)
    PlacePlant(coffee, 2, 7)
    PlacePlant(coffee, 5, 5)
    PlacePlant(coffee, 5, 6)
    PlacePlant(coffee, 5, 7)

    ; start game
    StartOnslaught()

    ; wait for round 1 to complete
    Sleep 120000 ; 2 minutes

    ; round 1 complete
    ClickWholeLawn(10)
    RemovePlant(2, 9)
    RemovePlant(5, 9)
    PlacePlant(garlic, 2, 9)
    PlacePlant(garlic, 5, 9)
    StartOnslaught()

    ; wait for round 2 to complete
    Sleep 120000 ; 2 minutes

    ; round 2 complete
    ClickWholeLawn(10)
    RemovePlant(2, 9)
    RemovePlant(5, 9)
    PlacePlant(garlic, 2, 9)
    PlacePlant(garlic, 5, 9)
    PlacePlant(garlic, 2, 8)
    PlacePlant(garlic, 5, 8)
    PlacePlant(pumpkin, 1, 5)
    ReleasePumpkin()
    PlacePlant(pumpkin, 6, 5)
    ReleasePumpkin()
    StartOnslaught()

    ; wait for round 3 to complete
    Sleep 120000 ; 2 minutes

    ; round 3 complete
    ClickWholeLawn(10)
    RemovePlant(2, 9)
    RemovePlant(5, 9)
    PlacePlant(garlic, 2, 9)
    PlacePlant(garlic, 5, 9)
    PlacePlant(garlic, 2, 8)
    PlacePlant(garlic, 5, 8)
    PlacePlant(pumpkin, 1, 5)
    ReleasePumpkin()
    PlacePlant(pumpkin, 6, 5)
    ReleasePumpkin()
    StartOnslaught()

    ; wait for round 4 to complete
    Sleep 120000 ; 2 minutes

    ; round 4 complete
    ClickWholeLawn(10)
    RemovePlant(2, 9)
    RemovePlant(5, 9)
    PlacePlant(garlic, 2, 9)
    PlacePlant(garlic, 5, 9)
    RemovePlant(2, 8)
    RemovePlant(5, 8)
    PlacePlant(garlic, 2, 8)
    PlacePlant(garlic, 5, 8)
    PlacePlant(pumpkin, 1, 5)
    ReleasePumpkin()
    PlacePlant(pumpkin, 6, 5)
    ReleasePumpkin()
    PlacePlant(pumpkin, 3, 5)
    ReleasePumpkin()
    PlacePlant(pumpkin, 4, 5)
    ReleasePumpkin()
    PlacePlant(pumpkin, 3, 4)
    ReleasePumpkin()
    PlacePlant(pumpkin, 4, 4)
    ReleasePumpkin()

    ; use rest of sun
    PlacePlant(marigold, 1, 6)
    PlacePlant(pumpkin, 1, 6)
    PlacePlant(marigold, 6, 6)
    PlacePlant(pumpkin, 6, 6)
    PlacePlant(marigold, 1, 7)
    PlacePlant(pumpkin, 1, 7)
    PlacePlant(marigold, 6, 7)
    PlacePlant(pumpkin, 6, 7)

    StartOnslaught()

    ; wait for round 5 to complete
    Sleep 120000 ; 2 minutes

    ; round 5 complete
    ClickWholeLawn(3)

    Sleep 10000

    BackToPvzMainMenu()
}
