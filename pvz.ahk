#Requires AutoHotkey v2.0+
#Warn All

PvzWindowTitle := "Plants vs. Zombies"

FocusToPvz()
{
    global PvzWindowTitle

    if WinExist(PvzWindowTitle)
    {
        WinActivate
    }
    else
    {
        ExitApp 1
    }
}

pvzClickDelay := 20
pvzGeneralDelay := 100
pvzNumSlots := 10

row1y := 156
row2y := 230
row3y := 300
row4y := 365
row5y := 435
row6y := 505

col1x := 46
col2x := 100
col3x := 153
col4x := 208
col5x := 259
col6x := 311
col7x := 364
col8x := 417

ChooseYourPlants := Map(
    ; row 1
    "Peashooter", {Y: row1y, X: col1x},
    "Sunflower", {Y: row1y, X: col2x},
    "Cherry Bomb", {Y: row1y, X: col3x},
    "Wall-nut", {Y: row1y, X: col4x},
    "Potato Mine", {Y: row1y, X: col5x},
    "Snow Pea", {Y: row1y, X: col6x},
    "Chomper", {Y: row1y, X: col7x},
    "Repeater", {Y: row1y, X: col8x},

    ; row 2
    "Puff-shroom", {Y: row2y, X: col1x},
    "Sun-shroom", {Y: row2y, X: col2x},
    "Fume-shroom", {Y: row2y, X: col3x},
    "Grave Buster", {Y: row2y, X: col4x},
    "Hypno-shroom", {Y: row2y, X: col5x},
    "Scaredy-shroom", {Y: row2y, X: col6x},
    "Ice-shroom", {Y: row2y, X: col7x},
    "Doom-shroom", {Y: row2y, X: col8x},

    ; row 3
    "Lily Pad", {Y: row3y, X: col1x},
    "Squash", {Y: row3y, X: col2x},
    "Threepeater", {Y: row3y, X: col3x},
    "Tangle Kelp", {Y: row3y, X: col4x},
    "Jalapeno", {Y: row3y, X: col5x},
    "Spikeweed", {Y: row3y, X: col6x},
    "Torchwood", {Y: row3y, X: col7x},
    "Tall-nut", {Y: row3y, X: col8x},

    ; row 4
    "Sea-shroom", {Y: row4y, X: col1x},
    "Plantern", {Y: row4y, X: col2x},
    "Cactus", {Y: row4y, X: col3x},
    "Blover", {Y: row4y, X: col4x},
    "Split Pea", {Y: row4y, X: col5x},
    "Starfruit", {Y: row4y, X: col6x},
    "Pumpkin", {Y: row4y, X: col7x},
    "Magnet-shroom", {Y: row4y, X: col8x},

    ; row 5
    "Cabbage-pult", {Y: row5y, X: col1x},
    "Flower Pot", {Y: row5y, X: col2x},
    "Kernel-pult", {Y: row5y, X: col3x},
    "Coffee Bean", {Y: row5y, X: col4x},
    "Garlic", {Y: row5y, X: col5x},
    "Umbrella Leaf", {Y: row5y, X: col6x},
    "Marigold", {Y: row5y, X: col7x},
    "Melon-pult", {Y: row5y, X: col8x},

    ; row 6
    "Gatling Pea", {Y: row6y, X: col1x},
    "Twin Sunflower", {Y: row6y, X: col2x},
    "Gloom-shroom", {Y: row6y, X: col3x},
    "Cattail", {Y: row6y, X: col4x},
    "Winter Melon", {Y: row6y, X: col5x},
    "Gold Magnet", {Y: row6y, X: col6x},
    "Spikerock", {Y: row6y, X: col7x},
)

plantChosenCounter := 0

PvzInit(clickDelay := 20, generalDelay := 100, numSlots := 10)
{
    global plantChosenCounter, pvzClickDelay, pvzGeneralDelay, pvzNumSlots
    plantChosenCounter := 0
    pvzClickDelay := clickDelay
    pvzGeneralDelay := generalDelay
    pvzNumSlots := numSlots
}

ChoosePlant(Plant)
{
    global ChooseYourPlants, plantChosenCounter
    plantChosenCounter++
    Click ChooseYourPlants[Plant].X, ChooseYourPlants[Plant].Y, 0
    Click ChooseYourPlants[Plant].X, ChooseYourPlants[Plant].Y
    return plantChosenCounter
}

SlotsX := [100, 155, 210, 260, 315, 363, 415, 470, 520]
SlotsY := 45

ChooseSlot(slot)
{
    global SlotsX, SlotsY, pvzClickDelay
    local x := SlotsX[slot]
    Click x, SlotsY, 0
    Sleep pvzClickDelay
    Click x, SlotsY
    Sleep pvzClickDelay
}

PvzMenu()
{
    global pvzGeneralDelay
    Sleep pvzGeneralDelay
    Click 740, 12, 0
    Sleep pvzGeneralDelay
    Click 740, 12
    Sleep pvzGeneralDelay
}

LetsRock()
{
    global pvzGeneralDelay
    Click 228, 566, 0
    Sleep pvzGeneralDelay
    Click 228, 566
    Sleep pvzGeneralDelay
}

StartOnslaught()
{
    global pvzGeneralDelay
    Sleep pvzGeneralDelay
    Click 408, 579, 0
    Sleep pvzGeneralDelay
    Click 408, 579
    Sleep pvzGeneralDelay
}

lawnRow1y := 132
lawnRow2y := 220
lawnRow3y := 315
lawnRow4y := 405
lawnRow5y := 488
lawnRow6y := 550

lawnCol1x := 80
lawnCol2x := 160
lawnCol3x := 240
lawnCol4x := 320
lawnCol5x := 400
lawnCol6x := 480
lawnCol7x := 560
lawnCol8x := 640
lawnCol9x := 720

Lawn := [
    [
        {X: lawnCol1x, Y: lawnRow1y},
        {X: lawnCol2x, Y: lawnRow1y},
        {X: lawnCol3x, Y: lawnRow1y},
        {X: lawnCol4x, Y: lawnRow1y},
        {X: lawnCol5x, Y: lawnRow1y},
        {X: lawnCol6x, Y: lawnRow1y},
        {X: lawnCol7x, Y: lawnRow1y},
        {X: lawnCol8x, Y: lawnRow1y},
        {X: lawnCol9x, Y: lawnRow1y}
    ],
    [
        {X: lawnCol1x, Y: lawnRow2y},
        {X: lawnCol2x, Y: lawnRow2y},
        {X: lawnCol3x, Y: lawnRow2y},
        {X: lawnCol4x, Y: lawnRow2y},
        {X: lawnCol5x, Y: lawnRow2y},
        {X: lawnCol6x, Y: lawnRow2y},
        {X: lawnCol7x, Y: lawnRow2y},
        {X: lawnCol8x, Y: lawnRow2y},
        {X: lawnCol9x, Y: lawnRow2y}
    ],
    [
        {X: lawnCol1x, Y: lawnRow3y},
        {X: lawnCol2x, Y: lawnRow3y},
        {X: lawnCol3x, Y: lawnRow3y},
        {X: lawnCol4x, Y: lawnRow3y},
        {X: lawnCol5x, Y: lawnRow3y},
        {X: lawnCol6x, Y: lawnRow3y},
        {X: lawnCol7x, Y: lawnRow3y},
        {X: lawnCol8x, Y: lawnRow3y},
        {X: lawnCol9x, Y: lawnRow3y}
    ],
    [
        {X: lawnCol1x, Y: lawnRow4y},
        {X: lawnCol2x, Y: lawnRow4y},
        {X: lawnCol3x, Y: lawnRow4y},
        {X: lawnCol4x, Y: lawnRow4y},
        {X: lawnCol5x, Y: lawnRow4y},
        {X: lawnCol6x, Y: lawnRow4y},
        {X: lawnCol7x, Y: lawnRow4y},
        {X: lawnCol8x, Y: lawnRow4y},
        {X: lawnCol9x, Y: lawnRow4y}
    ],
    [
        {X: lawnCol1x, Y: lawnRow5y},
        {X: lawnCol2x, Y: lawnRow5y},
        {X: lawnCol3x, Y: lawnRow5y},
        {X: lawnCol4x, Y: lawnRow5y},
        {X: lawnCol5x, Y: lawnRow5y},
        {X: lawnCol6x, Y: lawnRow5y},
        {X: lawnCol7x, Y: lawnRow5y},
        {X: lawnCol8x, Y: lawnRow5y},
        {X: lawnCol9x, Y: lawnRow5y}
    ],
    [
        {X: lawnCol1x, Y: lawnRow6y},
        {X: lawnCol2x, Y: lawnRow6y},
        {X: lawnCol3x, Y: lawnRow6y},
        {X: lawnCol4x, Y: lawnRow6y},
        {X: lawnCol5x, Y: lawnRow6y},
        {X: lawnCol6x, Y: lawnRow6y},
        {X: lawnCol7x, Y: lawnRow6y},
        {X: lawnCol8x, Y: lawnRow6y},
        {X: lawnCol9x, Y: lawnRow6y}
    ]
]

PlacePlant(slot, row, col)
{
    global Lawn, pvzClickDelay
    ChooseSlot(slot)
    local pos := Lawn[row][col]
    Click pos.X, pos.Y, 0
    Sleep pvzClickDelay
    Click pos.X, pos.Y
    Sleep pvzClickDelay
}

ClickLawn(row, col)
{
    global Lawn, pvzClickDelay
    local pos := Lawn[row][col]
    Click pos.X, pos.Y, 0
    Sleep pvzClickDelay
    Click pos.X, pos.Y
    Sleep pvzClickDelay
}

ResumeGame()
{
    global pvzGeneralDelay
    Click 397, 448, 0
    Sleep pvzGeneralDelay
    Click 397, 448
    Sleep pvzGeneralDelay
}

shovelXCoordinate()
{
    global pvzNumSlots
    local x := (pvzNumSlots - 8) * 40
    return x + 560
}

ChooseShovel()
{
    global pvzGeneralDelay
    Sleep pvzGeneralDelay
    local x := shovelXCoordinate()
    Click x, 38, 0
    Sleep pvzGeneralDelay
    Click x, 38
    Sleep 250
}

ClickWholeLawn(count)
{
    local lawnX := [1, 2, 3, 4, 5, 6, 7, 8, 9]
    local lawnY := [1, 2, 3, 4, 5, 6]

    Loop count
    {
        for x in lawnX
        {
            FocusToPvz()

            for y in lawnY
            {
                local row := y
                local col := x
                ClickLawn(row, col)
            }
        }
    }
}

RemovePlant(row, col)
{
    global Lawn, pvzGeneralDelay
    ChooseShovel()
    local pos := Lawn[row][col]
    Sleep pvzGeneralDelay
    Click pos.X, pos.Y, 0
    Sleep pvzGeneralDelay
    Click pos.X, pos.Y
    Sleep 250
}

ReleasePumpkin()
{
    global pvzClickDelay
    Sleep pvzClickDelay
    Click "Right"
    Sleep pvzClickDelay
}

RestartLevel()
{
    global pvzGeneralDelay
    Menu()
    Sleep pvzGeneralDelay
    Click 393, 356, 0
    Sleep pvzGeneralDelay
    Click 393, 356
    Sleep pvzGeneralDelay
    Click 284, 393, 0
    Sleep pvzGeneralDelay
    Click 284, 393
    Sleep pvzGeneralDelay
}

PvzMainMenu()
{
    global pvzGeneralDelay
    PvzMenu()
    Sleep pvzGeneralDelay
    Click 393, 398, 0
    Sleep pvzGeneralDelay
    Click 393, 398
    Sleep pvzGeneralDelay
    Click 304, 420, 0
    Sleep pvzGeneralDelay
    Click 304, 420
    Sleep pvzGeneralDelay
}

ClickMiniGames()
{
    global pvzGeneralDelay
    Click 524, 232, 0
    Sleep pvzGeneralDelay
    Click 524, 232
    Sleep pvzGeneralDelay 
}

StartLastStand()
{
    global pvzGeneralDelay
    ClickMiniGames()
    Click 82, 493, 0
    Sleep pvzGeneralDelay
    Click 82, 493
    Sleep 2000
    Click 502, 371, 0
    Sleep pvzGeneralDelay
    Click 502, 371
    Sleep 200
    Click 301, 393, 0
    Sleep pvzGeneralDelay
    Click 301, 393
    Sleep 6000
}

BackToPvzMainMenu()
{
    global pvzGeneralDelay
    Click 72, 581, 0
    Sleep pvzGeneralDelay
    Click 72, 581
    Sleep 1000
}