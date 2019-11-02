local this = {}

local skillGearMapping = require("mer.starterGear.skillGearMapping")

local weaponSkills = {
    [tes3.skill.shortBlade] = true,
    [tes3.skill.longBlade] = true,
    [tes3.skill.marksman] = true,
    [tes3.skill.bluntWeapon] = true,
    [tes3.skill.axe] = true,
    [tes3.skill.spear] = true,

}

function this.pickGear()
    --Get list of major/minor skills

    --find at least one weapon skill
    --find at least one armor skill

    --add items for top 5 skills
    local gearList = {}
    local topSkills = {}
    for _, skill in ipairs(tes3.player.object.class.majorSkills) do
        table.insert(topSkills, skill)
    end
    for _, skill in ipairs(tes3.player.object.class.minorSkills) do
        table.insert(topSkills, skill)
    end

    local gearCount = 0

    local function getGear(skill)
        gearCount = gearCount + 1
        local skillList = skillGearMapping[skill]()
        for _, gear in ipairs(skillList) do
            table.insert(gearList, gear)
        end
    end

    --Make sure we get at least one weapon first
    for _, skill in ipairs(topSkills) do
        if weaponSkills[skill] then
            getGear(skill)
            break
        end
    end

    --Get up to 5 skill gears
    for _, skill in ipairs(topSkills) do
        if gearCount >= 5 then break end
        if skillGearMapping[skill] then
            getGear(skill)
        end
    end
    
    return gearList
end

return this