local this = {}
local goldAmount = 50
local arrowAmount = 50
local throwingStarAmount = 30
--[[
    Functions for each class return
    gear list of item objects
]]
this.pickGear = {
    ["Acrobat"] = function()
        local gearList = {
            { item = "netch_leather_shield" },
            { item = "short bow" },
            { item = "iron arrow", count = arrowAmount },
            { item = "netch_leather_boots" },
            { item = "bk_words_of_the_wind" },
            { item = "iron spear" },
            { item = "Gold_001", count = goldAmount }
        }
        return gearList
    end,
    ["Agent"] = function()
        local gearList = {
            { item = "netch_leather_shield" },
            { item = "iron shortsword" },
            { item = "iron spider dagger" },
            { item = "bk_poisonsong1" },
            { item = "bk_InvocationOfAzura" },
            { item = "bk_guide_to_balmora" },
            { item = "sc_ondusisunhinging" },
            { item = "Gold_001", count = goldAmount },
        }
        return gearList
    end,
    ["Archer"] = function()
        local gearList = {
            { item = "netch_leather_cuirass" },
            { item = "short bow" },
            { item = "iron arrow", count = arrowAmount },
            { item = "bk_ChildrenOfTheSky" },
            { item = "heavy_leather_boots" },
            { item = "iron longsword"},
        }
        return gearList
    end,
    ["Assassin"] = function()
        local gearList = {
            { item = "netch_leather_shield"},
            { item = "short bow" },
            { item = "pick_apprentice_01", count= 2},
            { item = "probe_apprentice_01", count= 2},
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "netch_leather_boots" },
            { item = "iron spider dagger" },
            { item = "iron shortsword" },

        }
        return gearList
    end,
    ["Barbarian"] = function()
        local gearList = {
            { item = "heavy_leather_boots" },
            { item = "iron_shield" },
            { item = "iron battle axe" },
            { item = "iron club" },
            { item = "repair_journeyman_01" },
        }
        return gearList
    end,
    ["Bard"] = function()
        local gearList = {
            --clothes
            { item = "netch_leather_shield"},
            { item = "iron longsword"},
            { item = "pick_apprentice_01", count= 2},
            { item = "probe_apprentice_01", count= 2},
            { item = "Misc_SoulGem_Greater"},
            { item = "Misc_SoulGem_Petty"},
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "Gold_001", count = goldAmount },
            { item = "sc_messengerscroll" }

        }
        --if tes3.isModActive("BardicInspiration.esp") then
         --   table.insert(gearList, { item = "mer_lute", count = 1 })
        --else
            table.insert(gearList, { item = "misc_de_lute_01", count = 1 })
        --end

        return gearList
    end,
    ["Battlemage"] = function()
        local gearList = {
            { item = "ingred_bittergreen_petals_01"},
            { item = "ingred_fire_salts_01"},
            { item = "apparatus_a_mortar_01"},
            { item = "Misc_SoulGem_Petty", count = 2},
            { item = "Misc_SoulGem_Greater"},
            { item = "Misc_SoulGem_Lesser"},
            { item = "Misc_SoulGem_Common"},
            { item = "iron longsword"},
            { item = "iron_helmet"},
            { item = "sc_elementalburstfire"},
            { item = "iron war axe"},
            { item = "bk_InvocationOfAzura"},
            { item = "bk_ArcturianHeresy"},
            { item = "bk_darkestdarkness"},
        }
        return gearList
    end,
    ["Crusader"] = function()
        local gearList = {
            { item = "iron_helmet"},
            { item = "iron longsword"},
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "iron mace"},
            { item = "iron_towershield"},
            { item = "bk_reflectionsoncultworship..."},
            { item = "bk_formygodsandemperor"}
        }
        return gearList
    end,
    ["Healer"] = function()
        local gearList = {
            { item = "iron mace"},
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "common_glove_right_01"},
            { item = "common_glove_left_01"},
            { item = "sc_healing"},
            { item = "bk_InvocationOfAzura"},
            { item = "bk_varietiesoffaithintheempire"},
            { item = "bk_MysteriousAkavir"},
        }
        return gearList
    end,
    ["Knight"] = function()
        local gearList = {
            { item = "iron_helmet"},
            { item = "iron longsword"},
            { item = "iron_towershield"},
            { item = "Misc_SoulGem_Greater"},
            { item = "bk_ChangedOnes"},
            { item = "sc_vigor"},
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Mage"] = function()
        local gearList = {
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "apparatus_a_mortar_01"},
            { item = "sc_firstbarrier"},
            { item = "sc_elementalburstfire"},
            { item = "sc_mageseye"},
            { item = "bk_galerionthemystic"},
            { item = "bk_AffairsOfWizards"},
            { item = "bk_InvocationOfAzura"},
            { item = "bk_charterMG"},
            { item = "bk_Mysticism"},
            { item = "bk_HouseOfTroubles_o"},
            { item = "Misc_SoulGem_Petty", count = 2},
            { item = "Misc_SoulGem_Greater"},
            { item = "Misc_SoulGem_Lesser"},
            { item = "Misc_SoulGem_Common"},
        }
        return gearList
    end,
    ["Monk"] = function()
        local gearList = {
            { item = "netch_leather_boots" },
            { item = "netch_leather_shield"},
            { item = "iron warhammer"},
            { item = "silver staff"},
            { item = "bk_DoorsOfTheSpirit"},
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Nightblade"] = function()
        local gearList = {
            { item = "netch_leather_cuirass" },
            { item = "short bow" },
            { item = "sc_invisibility"},
            { item = "bk_vampiresofvvardenfell1"},
            { item = "bk_poisonsong1"},
            { item = "iron spider dagger" },
            { item = "pick_apprentice_01", count= 2},
            { item = "probe_apprentice_01", count= 2},
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Pilgrim"] = function()
        local gearList = {
            { item = "bk_guide_to_vvardenfell" },
            { item = "sc_almsiviintervention" },
            { item = "iron shortsword" },
            { item = "netch_leather_shield" },
            { item = "bk_InvocationOfAzura"},
            { item = "apparatus_a_mortar_01"},
            { item = "apparatus_a_alembic_01"},
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Rogue"] = function()
        local gearList = {
            { item = "iron battle axe" },
            { item = "iron spider dagger" },
            { item = "iron longsword"},
            { item = "common_glove_right_01"},
            { item = "common_glove_left_01"},
            { item = "netch_leather_shield" },
            { item = "heavy_leather_boots" },
            { item = "bk_guide_to_balmora" },
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Scout"] = function()
        local gearList = {
            { item = "iron longsword"},
            { item = "heavy_leather_boots" },
            { item = "short bow" },
            { item = "iron_shield" },
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "bk_ChildrenOfTheSky" },
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Sorcerer"] = function()
        local gearList = {
            { item = "Misc_SoulGem_Petty", count = 2},
            { item = "Misc_SoulGem_Greater"},
            { item = "Misc_SoulGem_Lesser"},
            { item = "Misc_SoulGem_Common"},
            { item = "short bow" },
            { item = "iron longsword"},
            { item = "bk_InvocationOfAzura"},
            { item = "iron_helmet"},
            { item = "sc_summonskeletalservant"},
            { item = "bk_onoblivion"},
            { item = "bk_Mysticism"},
        }
        return gearList
    end,
    ["Spellsword"] = function()
        local gearList = {
            { item = "Misc_SoulGem_Petty", count = 2},
            { item = "Misc_SoulGem_Greater"},
            { item = "Misc_SoulGem_Lesser"},
            { item = "Misc_SoulGem_Common"},
            { item = "bk_onoblivion"},
            { item = "bk_Mysticism"},
            { item = "netch_leather_shield" },
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "iron longsword"},
            { item = "apparatus_a_mortar_01"},
            { item = "repair_journeyman_01" },
            { item = "sc_vigor"},
        }
        return gearList
    end,
    ["Thief"] = function()
        local gearList = {
            { item = "iron spider dagger" },
            { item = "iron shortsword" },
            { item = "short bow" },
            { item = "firebite star", count = throwingStarAmount},
            { item = "pick_apprentice_01", count= 2},
            { item = "probe_apprentice_01", count= 2},
            { item = "netch_leather_boots" },
            { item = "ingred_emerald_01", count = 2},
            { item = "ingred_ruby_01"},
            { item = "ingred_pearl_01"},
            { item = "ingred_diamond_01"},
            { item = "Gold_001", count = goldAmount},
        }
        return gearList
    end,
    ["Warrior"] = function()
        local gearList = {
            { item = "iron battle axe" },
            { item = "iron_helmet"},
            { item = "iron_towershield"},
            { item = "iron longsword"},
            { item = "repair_journeyman_01"},
            { item = "repair_prongs"}
        }
        return gearList
    end,
    ["Witchhunter"] = function()
        local gearList = {
            { item = "iron mace"},
            { item = "netch_leather_shield" },
            { item = "Misc_SoulGem_Petty", count = 3},
            { item = "Misc_SoulGem_Greater"},
            { item = "Misc_SoulGem_Lesser", count = 2},
            { item = "Misc_SoulGem_Common"},
            { item = "ingred_bittergreen_petals_01", count = 1},
            { item = "ingred_fire_salts_01", count = 1},
            { item = "apparatus_a_mortar_01"},
            { item = "bk_BookOfDaedra"},
            { item = "bk_darkestdarkness"}
        }
        return gearList
    end,

}

return this