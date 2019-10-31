local this = {}

local gearCategories = require("mods.mer.startingGear.gearCategories")
local gearList
local worth
--[[
    Get the highest valued skill for a given category.
]]
local function findHighestSkill(category, checkMinorSkills)
    local classSkills = (
        checkMinorSkills and 
        tes3.player.class.minorSkills or 
        tes3.player.class.majorSkills
    )
    local topSkill
    for _, skillIndex in ipairs(classSkills) do
        if category[skillIndex] then
            local skill = tes3.mobilePlayer.skills[skillIndex]
            if topSkill == nil then
                topSkill = skill
            else
                if skill.value > topSkill.value then
                    topSkill = skill
                end
            end
        end
    end
    --If nothing found for major skills, check again for minor skills
    if topSkill == nil and not checkMinorSkills then
        findHighestSkill(category, true)
    end
    return topSkill --can be nil if no skills for this category
end


local function addItem(item, count)
    table.add(gearList, { item = item, count = count})
end

local function incWorth()
    --[[
        Keeps track of roughly how much shit we've given
            the player already, so we can decide how much
            misc crap to give them.
    ]]
    worth = worth + 1
end

local function addWeapons()
    local skill = findHighestSkill(gearCategories.weapons)
    local skillGear = gearCategories.weapons[skill.index]

    if skillGear ~= nil then
        incWorth()
        if skillGear.oneHanded then
            if not skillGear.twoHanded then
                --pick 1H weapon
                addItem(gearList, table.choice(skillGear.oneHanded), 1)
            else 
                local canUseShield = findHighestSkill(gearCategories.shield)
                if canUseShield then
                    --pick 2H weapon
                    addItem(gearList,  table.choice(skillGear.twoHanded), 1)
                else
                    --pick 1H weapon
                    addItem(gearList, table.choice(skillGear.oneHanded), 1)
                end
            end
        elseif skillGear.twoHanded then
            --pick 2H weapon
            addItem(gearList, table.choice(skillGear.twoHanded), 1)
        elseif skillGear.ranged then
            local rangedOptions = { "bow", "crossbow", "throwing" }
            local choice = table.choice(rangedOptions)
            if choice == "bow" then
                --pick bow and arrows
                addItem(gearList, table.choice(skillGear.bow), 1)
                addItem(gearList, table.choice(skillGear.arrow), math.rand(20, 40))
            elseif choice == "crossbow" then
                --pick crossbow and bolts
                addItem(gearList, table.choice(skillGear.crossbow), 1)
                addItem(gearList, table.choice(skillGear.bolt), math.rand(20, 40))
            elseif choice == "throwing" then
                --pick throwing knives
                addItem(gearList, table.choice(skillGear.throwingWeapon), math.rand(30, 50))
            end
        elseif skillGear.handToHand then
            --Probably nothing, maybe some gloves?
            addItem(gearList, table.choice(skillGear.handToHand), 1)
        end
    end
end

local function addArmor()
    local skill = findHighestSkill(gearCategories.armor)
    local skillGear = gearCategories.armor[skill.index]
    if skillGear ~= nil then
        incWorth()
        if skill.value == tes3.skill.unarmored then
            addItem(gearList, table.choice(skillGear.robes), 1)
        else
            local armorCombos = {
                { "boots", "greaves", "helmet" },
                { "boots", "greaves", "pauldron_left", "hand_left" },
                { "boots", "hand_left", "hand_right"},
                { "helmet", "hand_left", "hand_right", "pauldron_left", "pauldron_right" },
                { "greaves", "cuirass" },
                { "helmet", "cuirass"},
                { "boots", "helmet", "hand_left", "hand_right" }
            }
            local combo = table.choice(armorCombos)
            for _, slot in ipairs(combo) do
                addItem(gearList, table.choice(skillGear[slot]), 1)
            end
        end
    end
end

--[[
    returns gear list of item objects
]]
function this.pickGear()
    gearList = {}
    worth = 0
    addWeapons()
    addArmor()

    --[[

        Find Major/Minor Magic skills
        For each magic skill > 25
            add 2x magical items
        end

        Find highest misc skill
            Speechcraft
                Random 3 of the following:
                    telvanni bug musk
                    mazte/shein/sujamma
                    scroll of charm

            Mercantile
                5-10 of the following:
                    silverware
                    redware
                100-200 additional gold
                Replace clothing with expensive clothes

            Armorer
                2 Apprentice Repair Hammer
                2 Tongs

            Athletics/Acrobatics/HandToHand
                2-4 Restore fatigue potions
                2-4 Restore health potions

            Enchant/Mysticism
                2-4 lesser soul gems

            Alchemy
                novice mortar and pestle
                5-10 random ingredients

            Security/Sneak
                2 apprentice lockpicks
                2 apprentice probes
                


    ]]
end

return this


