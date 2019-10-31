local this = {}


function this.pickCustomClassGear()
    --[[

        Get Major skills and Minor skills

        Find Major Weapon skill
        if Weapon skill then
            if Block then
                pick 1H weapon
            else
                pick 2H weapon
            end
        end

        If Block then 
            pick shield

        Find Major/Minor Armor skill
        if Armor skill then
            pick between 3 and 5 of:
                helmet
                chest
                pants
                pouldron pair
                bracer/glove pair
                boots
            end
        else if unarmored then
            pick robe
        end

        Find Major/Minor Magic skills
        For each magic skill > 25
            add magicka restore potion
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


