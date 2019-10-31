local presetClasses = require("mods.mer.startingGear")
local common = require("mods.mer.common")
local function startClassGear()
    local class = tes3.getClass()
    if presetClasses[class] then 
        presetClasses.pickGear[class]()
    else
        common.pickCustomClassGear()
    end
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
            duration = 0.7,
            callback = startClassGear
        }
    end
end



local function loaded()
    newGame = false

    --Check for chargen
    charGen = tes3.findGlobal("CharGenState")
    if not checkingChargen then
        event.register("simulate", checkCharGen)
        checkingChargen = true
    end
  
end

event.register("loaded", loaded )