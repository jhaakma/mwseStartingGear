local presetClasses = require("mods.mer.startingGear")
local customClass = require("mods.mer.customClass")

local function addGear(gearList)
    for _, item in ipairs(gearList) do
        tes3.addItem{
            reference = tes3.player,
            item = item,
            updateGUI = false,
            playSound = false
        }
        if (
            item.objectType == tes3.objectType.armor or
            item.objectType == tes3.objectType.weapon
        ) then
            tes3.mobilePlayer:equip{ item = item }
        end
    end
    tes3ui.forcePlayerInventoryUpdate()
end

local function startClassGear()
    local class = tes3.getClass()
    local gearList
    if presetClasses[class] then 
        gearList = presetClasses.pickGear[class]()
    else
        gearList = customClass.pickGear()
    end
    addGear(gearList)
end

local charGen
local newGame
local checkingChargen
local function checkCharGen()
    if charGen.value == 10 then
        newGame = true
    elseif newGame and charGen.value == -1 then
        checkingChargen = false
        event.unregister("simulate", checkCharGen)
        timer.start{
            type = timer.simulate,
            duration = 0.7, --If clashes with char backgrounds, mess with this
            callback = startClassGear
        }
    end
end



local function loaded()
    newGame = nil --reset so we can check chargen state again
    charGen = tes3.findGlobal("CharGenState")
    --Only reregister if necessary. If new game was started during
    --  chargen of previous game, this will already be running
    if not checkingChargen then
        event.register("simulate", checkCharGen)
        checkingChargen = true
    end
end

event.register("loaded", loaded )