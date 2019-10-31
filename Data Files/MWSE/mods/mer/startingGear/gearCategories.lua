local this = {}


this.weapons = {
    [tes3.skill.bluntWeapon] = {
        oneHanded = {
            --ids
        }, 
        twoHanded = {
            --ids
        } 
    },
    [tes3.skill.longBlade] = {
        oneHanded = {
            --ids
        },
        twoHanded = {
            --ids
        }
    },
    [tes3.skill.axe] = {
        oneHanded = {
            --ids
        },
        twoHanded = {
            --ids
        }
    },
    [tes3.skill.spear] = {
        twoHanded = {
            --ids
        }
    },
    [tes3.skill.shortBlade] = {
        oneHanded = {
            --ids
        }
    },
    [tes3.skill.marksman] = {
        ranged = true,
        bow =  {
            --ids
        },
        arrow = {
            --ids
        },
        crossbow = {
            --ids
        },
        bolt = {
            --ids
        },
        throwingWeapon = {
            --ids
        }
    },
    [tes3.skill.handToHand] = {
        handToHand = {
            --ids
        }
    },
}

this.shield = {
    [tes3.skill.block] = true
}

this.armor = {
    ["mediumArmor"] = { 
        min = 3, 
        max = 5, 
        items = {
            --ids
        }
    },
    ["heavyArmor"] = { 
        min = 3, 
        max = 5,
        items = {
            --ids
        }
    },
    ["unarmored"] ={ 
        min = 1, 
        max = 1,
        items = {
            --ids
        }
    },
    ["lightArmor"] = { 
        min = 3, 
        max = 5,
        items = {
            --ids
        }
    },
}

return this