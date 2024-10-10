--LEAKED AND FIXED BY RDEVELOPER BOSS !!!!
--FUCK YOU QUASAAAAAR RARE5M ON THE TOP !!!!

Keys = {
    ["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
    ["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
    ["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
    ["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
    ["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
    ["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
    ["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
    ["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
}

Config = Config or {}

--Available languages: en, it, es, fr, pt, de, ru, tr.
--But you can modify them or create your own language below.
Config.Language = 'es'

--Modify your ESX-based framework here.
Config.getSharedObject = 'rare5m:getSharedObject'

--Configure your key to repair here.
Config.RepairKey = "E"

--Customize your notification system here.
function SendTextMessage(msg)
	--SetNotificationTextEntry('STRING')
	--AddTextComponentString(msg)
	--DrawNotification(0,1)
    
	exports['mythic_notify']:DoHudText('inform', msg)
end

--These will be weapons that have no durability.
Config.DurabilityBlockedWeapons = {
    "weapon_dagger",
    "weapon_bat",
    "weapon_stungun",
    "weapon_crowbar",
    "weapon_bottle",
    "weapon_unarmed",
    "weapon_nightstick",
    "weapon_flashlight",
    "weapon_golfclub",
    "weapon_hamme",
    "weapon_hatchet",
    "weapon_knife",
    "weapon_machete",
    "weapon_wrench",
    "weapon_battleaxe",
    "weapon_poolcue",
    "weapon_stone_hatchet",
    "weapon_grenade",
    "weapon_molotov",
    "weapon_stickybomb",
    "weapon_proxmine",
    "weapon_snowball",
    "weapon_pipebomb",
    "weapon_ball",
    "weapon_battleaxe",
    "weapon_smokegrenade",
    "weapon_flare",
    "weapon_petrolcan",
    "weapon_fireextinguisher",
    "weapon_hazardcan",
}

--Time it takes to break a weapon.
Config.DurabilityMultiplier = {
    ["weapon_unarmed"] 				 = 0.15,
    ["weapon_knife"] 				 = 0.15,
    ["weapon_nightstick"] 			 = 0.15,
    ["weapon_hammer"] 				 = 0.15,
    ["weapon_bat"] 					 = 0.15,
    ["weapon_golfclub"] 			 = 0.15,
    ["weapon_crowbar"] 				 = 0.15,
    ["weapon_pistol"] 				 = 0.15,
    ["weapon_combatpistol"] 		 = 0.15,
    ["weapon_appistol"] 			 = 0.15,
    ["weapon_pistol50"] 			 = 0.15,
    ["weapon_microsmg"] 			 = 0.15,
    ["weapon_smg"] 				 	 = 0.15,
    ["weapon_assaultsmg"] 			 = 0.15,
    ["weapon_assaultrifle"] 		 = 0.15,
    ["weapon_carbinerifle"] 		 = 0.15,
    ["weapon_advancedrifle"] 		 = 0.15,
    ["weapon_mg"] 					 = 0.15,
    ["weapon_combatmg"] 			 = 0.15,
    ["weapon_pumpshotgun"] 			 = 0.15,
    ["weapon_sawnoffshotgun"] 		 = 0.15,
    ["weapon_assaultshotgun"] 		 = 0.15,
    ["weapon_bullpupshotgun"] 		 = 0.15,
    ["weapon_stungun"] 				 = 0.15,
    ["weapon_sniperrifle"] 			 = 0.15,
    ["weapon_heavysniper"] 			 = 0.15,
    ["weapon_remotesniper"] 		 = 0.15,
    ["weapon_grenadelauncher"] 		 = 0.15,
    ["weapon_grenadelauncher_smoke"] = 0.15,
    ["weapon_rpg"] 					 = 0.15,
    ["weapon_minigun"] 				 = 0.15,
    ["weapon_fireextinguisher"] 	 = 0.15,
    ["weapon_ball"] 				 = 0.15,
    ["weapon_flare"] 				 = 0.15,
    ["weapon_snspistol"] 			 = 0.15,
    ["weapon_bottle"] 				 = 0.15,
    ["weapon_gusenberg"] 			 = 0.15,
    ["weapon_specialcarbine"] 		 = 0.15,
    ["weapon_heavypistol"] 			 = 0.15,
    ["weapon_bullpuprifle"] 		 = 0.15,
    ["weapon_dagger"] 				 = 0.15,
    ["weapon_vintagepistol"] 		 = 0.15,
    ["weapon_firework"] 			 = 0.15,
    ["weapon_musket"] 			     = 0.15,
    ["weapon_heavyshotgun"] 		 = 0.15,
    ["weapon_marksmanrifle"] 		 = 0.15,
    ["weapon_hominglauncher"] 		 = 0.15,
    ["weapon_proxmine"] 			 = 0.15,
    ["weapon_snowball"] 		     = 0.15,
    ["weapon_flaregun"] 			 = 0.15,
    ["weapon_garbagebag"] 			 = 0.15,
    ["weapon_handcuffs"] 			 = 0.15,
    ["weapon_combatpdw"] 			 = 0.15,
    ["weapon_marksmanpistol"] 		 = 0.15,
    ["weapon_knuckle"] 				 = 0.15,
    ["weapon_hatchet"] 				 = 0.15,
    ["weapon_railgun"] 				 = 0.15,
    ["weapon_machete"] 				 = 0.15,
    ["weapon_machinepistol"] 		 = 0.15,
    ["weapon_switchblade"] 			 = 0.15,
    ["weapon_revolver"] 			 = 0.15,
    ["weapon_dbshotgun"] 			 = 0.15,
    ["weapon_compactrifle"] 		 = 0.15,
    ["weapon_battleaxe"] 			 = 0.15,
    ["weapon_compactlauncher"] 		 = 0.15,
    ["weapon_minismg"] 				 = 0.15,
    ["weapon_pipebomb"] 			 = 0.15,
    ["weapon_poolcue"] 				 = 0.15,
    ["weapon_wrench"] 				 = 0.15,
    ["weapon_autoshotgun"] 		 	 = 0.15,
}

--You can choose here the hidden repair points.
Config.WeaponRepairPoints = {
    [1] = {
        coords = {x = 964.02, y = -1267.41, z = 34.97, h = 35.5, r = 1.0},
        IsRepairing = false,
        RepairingData = {},
    },
    --[2] = {
    --    coords = {x = 964.02, y = -1267.41, z = 34.97, h = 35.5, r = 1.0},
    --    IsRepairing = false,
    --    RepairingData = {},
    --},
}

--Price of the repair by type of weapon.
Config.WeaponRepairCotsts = {
    ["pistol"] = 1000,
    ["smg"] = 3000,
    ["rifle"] = 5000,
    ["sniper"] = 6000,
    ["mg"] = 8000,
    ["grenadelauncher"] = 10000,
}

--These are all the accessories included in this package.
Config.WeaponAttachments = {
    ["WEAPON_KNUCKLE"] = {
        ["knucklestyle1"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_PIMP",
            label = "The Pimp",
            item = "knuckle_style_1",
        },
        ["knucklestyle2"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_BALLAS",
            label = "The Ballas",
            item = "knuckle_style_2",
        },	
        ["knucklestyle3"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_DOLLAR",
            label = "The Hustler",
            item = "knuckle_style_3",
        },	
        ["knucklestyle4"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_DIAMOND",
            label = "The Rock",
            item = "knuckle_style_4",
        },	
        ["knucklestyle5"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_HATE",
            label = "The Hater",
            item = "knuckle_style_5",
        },	
        ["knucklestyle6"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_LOVE",
            label = "The Lover",
            item = "knuckle_style_6",
        },	
        ["knucklestyle7"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_PLAYER",
            label = "The Player",
            item = "knuckle_style_7",
        },	
        ["knucklestyle8"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_KING",
            label = "The King",
            item = "knuckle_style_8",
        },	
        ["knucklestyle9"] = {
            component = "COMPONENT_KNUCKLE_VARMOD_VAGOS",
            label = "The Vagos",
            item = "knuckle_style_9",
        },	
    },
    ["WEAPON_SWITCHBLADE"] = {
        ["switchbladestyle1"] = {
            component = "COMPONENT_SWITCHBLADE_VARMOD_VAR1",
            label = "Luxury",
            item = "blade_style_1",
        },
        ["switchbladestyle2"] = {
            component = "COMPONENT_SWITCHBLADE_VARMOD_VAR2",
            label = "Bodyguard",
            item = "blade_style_2",
        },
    },
    ["WEAPON_SNSPISTOL"] = {
        ["extendedclip"] = {
            component = "COMPONENT_SNSPISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_SNSPISTOL_VARMOD_LOWRIDER",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_COMBATPISTOL"] = {
        ["extendedclip"] = {
            component = "COMPONENT_COMBATPISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_PI_FLSH",
            label = "Flashlight",
            item = "pistol_flashlight",
        },	
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "pistol_suppressor",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_PISTOL_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_APPISTOL"] = {
        ["extendedclip"] = {
            component = "COMPONENT_APPISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_PI_FLSH",
            label = "Flashlight",
            item = "pistol_flashlight",
        },	
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "pistol_suppressor",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_APPISTOL_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_PISTOL50"] = {
        ["extendedclip"] = {
            component = "COMPONENT_PISTOL50_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_PI_FLSH",
            label = "Flashlight",
            item = "pistol_flashlight",
        },	
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "pistol_suppressor",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_PISTOL50_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_REVOLVER"] = {
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_REVOLVER_VARMOD_BOSS",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_HEAVYPISTOL"] = {
        ["extendedclip"] = {
            component = "COMPONENT_HEAVYPISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_PI_FLSH",
            label = "Flashlight",
            item = "pistol_flashlight",
        },	
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "pistol_suppressor",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_HEAVYPISTOL_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_RAYPISTOL"] = {
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_RAYPISTOL_VARMOD_XMAS18",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_VINTAGEPISTOL"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "pistol_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_VINTAGEPISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_PISTOL"] = {
        ["flashlight"] = {
            component = "COMPONENT_AT_PI_FLSH",
            label = "Flashlight",
            item = "pistol_flashlight",
        },   
        ["extendedclip"] = {
            component = "COMPONENT_PISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP_02",
            label = "Suppressor",
            item = "pistol_suppressor",
        }, 
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_PISTOL_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_ASSAULTRIFLE"] = {
        ["extendedclip"] = {
            component = "COMPONENT_ASSAULTRIFLE_CLIP_02",
            label = "Extended Clip",
            item = "rifle_extendedclip",
        },    
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "rifle_suppressor",
        },  
        ["drummag"] = {
            component = "COMPONENT_ASSAULTRIFLE_CLIP_03	",
            label = "Drum Magazine",
            item = "rifle_drummag",
        },                                                   
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "rifle_flashlight",
        },  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MACRO",
            label = "Scope",
            item = "rifle_scope",
        },  
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "rifle_grip",
        },  
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_ASSAULTRIFLE_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_CARBINERIFLE"] = {
        ["extendedclip"] = {
            component = "COMPONENT_CARBINERIFLE_CLIP_02",
            label = "Extended Clip",
            item = "rifle_extendedclip",
        },    
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP",
            label = "Suppressor",
            item = "rifle_suppressor",
        },  
        ["drummag"] = {
            component = "COMPONENT_CARBINERIFLE_CLIP_03	",
            label = "Drum Magazine",
            item = "rifle_drummag",
        },                                                   
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "rifle_flashlight",
        },  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MEDIUM",
            label = "Scope",
            item = "rifle_scope",
        },  
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "rifle_grip",
        },  
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_CARBINERIFLE_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },                                             
    ["WEAPON_MICROSMG"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "smg_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_MICROSMG_CLIP_02",
            label = "Extended Clip",
            item = "smg_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_PI_FLSH",
            label = "Lantern",
            item = "smg_flashlight",
        },
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MACRO",
            label = "Binoculars",
            item = "smg_scope",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_MICROSMG_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_SMG"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "smg_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_SMG_CLIP_02",
            label = "Extended Clip",
            item = "smg_extendedclip",
        },
        ["drummag"] = {
            component = "COMPONENT_SMG_CLIP_03",
            label = "Drum Magazine",
            item = "smg_drummag",
        }, 
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "smg_flashlight",
        },
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MACRO_02",
            label = "Binoculars",
            item = "smg_scope",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_SMG_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_ASSAULTSMG"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "smg_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_ASSAULTSMG_CLIP_02",
            label = "Extended Clip",
            item = "smg_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "smg_flashlight",
        },
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MACRO",
            label = "Binoculars",
            item = "smg_scope",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_MACHINEPISTOL"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "pistol_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_MACHINEPISTOL_CLIP_02",
            label = "Extended Clip",
            item = "pistol_extendedclip",
        },
        ["drummag"] = {
            component = "COMPONENT_MACHINEPISTOL_CLIP_03",
            label = "Drum Magazine",
            item = "pistol_drummag",
        }, 
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_COMBATPDW"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_PI_SUPP",
            label = "Suppressor",
            item = "smg_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_COMBATPDW_CLIP_02",
            label = "Extended Clip",
            item = "smg_extendedclip",
        },
        ["drummag"] = {
            component = "COMPONENT_COMBATPDW_CLIP_03",
            label = "Drum Magazine",
            item = "smg_drummag",
        }, 
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "smg_flashlight",
        },
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "smg_grip",
        },
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_SMALL",
            label = "Binoculars",
            item = "smg_scope",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_PUMPSHOTGUN"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_SR_SUPP",
            label = "Suppressor",
            item = "shotgun_suppressor",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "shotgun_flashlight",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_SAWNOFFSHOTGUN"] = {
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_SAWNOFFSHOTGUN_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },
    },
    ["WEAPON_ASSAULTSHOTGUN"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP",
            label = "Suppressor",
            item = "shotgun_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_ASSAULTSHOTGUN_CLIP_02",
            label = "Extended Clip",
            item = "shotgun_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "shotgun_flashlight",
        },
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "shotgun_grip",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_BULLPUPSHOTGUN"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "shotgun_suppressor",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "shotgun_flashlight",
        },
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "shotgun_grip",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_HEAVYSHOTGUN"] = {
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "shotgun_suppressor",
        },
        ["extendedclip"] = {
            component = "COMPONENT_HEAVYSHOTGUN_CLIP_02",
            label = "Extended Clip",
            item = "shotgun_extendedclip",
        },
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "shotgun_flashlight",
        },
        ["drummag"] = {
            component = "COMPONENT_HEAVYSHOTGUN_CLIP_03	",
            label = "Drum Magazine",
            item = "shotgun_drummag",
        }, 
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "shotgun_grip",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_MINISMG"] = {
        ["extendedclip"] = {
            component = "COMPONENT_MINISMG_CLIP_02",
            label = "Extended Clip",
            item = "smg_extendedclip",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_COMPACTRIFLE"] = {
        ["extendedclip"] = {
            component = "COMPONENT_COMPACTRIFLE_CLIP_02",
            label = "Extended Clip",
            item = "rifle_extendedclip",
        },
        ["drummag"] = {
            component = "COMPONENT_COMPACTRIFLE_CLIP_03",
            label = "Extended Clip",
            item = "rifle_drummag",
        },
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
    },
    ["WEAPON_ADVANCEDRIFLE"] = {
        ["extendedclip"] = {
            component = "COMPONENT_ADVANCEDRIFLE_CLIP_02",
            label = "Extended Clip",
            item = "rifle_extendedclip",
        },    
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP",
            label = "Suppressor",
            item = "rifle_suppressor",
        },                                                     
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "rifle_flashlight",
        },  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_SMALL",
            label = "Scope",
            item = "rifle_scope",
        },   
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_SPECIALCARBINE"] = {
        ["extendedclip"] = {
            component = "COMPONENT_SPECIALCARBINE_CLIP_02",
            label = "Extended Clip",
            item = "rifle_extendedclip",
        },    
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "rifle_suppressor",
        },  
        ["drummag"] = {
            component = "COMPONENT_SPECIALCARBINE_CLIP_03	",
            label = "Drum Magazine",
            item = "rifle_drummag",
        },                                                   
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Lantern",
            item = "rifle_flashlight",
        },  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MEDIUM",
            label = "Scope",
            item = "rifle_scope",
        },  
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "rifle_grip",
        },  
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_SPECIALCARBINE_VARMOD_LOWRIDER",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_MG"] = {
        ["extendedclip"] = {
            component = "COMPONENT_MG_CLIP_02",
            label = "Extended Clip",
            item = "mg_extendedclip",
        },                                                       
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_SMALL_02",
            label = "Scope",
            item = "mg_scope",
        },   
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_MG_VARMOD_LOWRIDER",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_COMBATMG"] = {
        ["extendedclip"] = {
            component = "COMPONENT_COMBATMG_CLIP_02",
            label = "Extended Clip",
            item = "mg_extendedclip",
        },                                                       
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_MEDIUM",
            label = "Scope",
            item = "mg_scope",
        },  
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "mg_grip",
        },  
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_COMBATMG_VARMOD_LOWRIDER",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_GUSENBERG"] = {
        ["extendedclip"] = {
            component = "COMPONENT_GUSENBERG_CLIP_02",
            label = "Extended Clip",
            item = "mg_extendedclip",
        },                                                        
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },                                          
    },
    ["WEAPON_SNIPERRIFLE"] = { 
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP_02",
            label = "Suppressor",
            item = "sniper_suppressor",
        },  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_LARGE",
            label = "Scope",
            item = "sniper_scope",
        },  
        ["advancedscope"] = {
            component = "COMPONENT_AT_SCOPE_MAX",
            label = "Advanced Scope",
            item = "snipere_advancedscope",
        },
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "sniper_grip",
        },  
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },
        ["luxury"] = {
            component = "COMPONENT_SNIPERRIFLE_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },                                               
    },
    ["WEAPON_HEAVYSNIPER"] = {  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_LARGE",
            label = "Scope",
            item = "sniper_scope",
        },  
        ["advancedscope"] = {
            component = "COMPONENT_AT_SCOPE_MAX",
            label = "Advanced Scope",
            item = "sniper_advancedscope",
        }, 
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },                                          
    },
    ["WEAPON_MARKSMANRIFLE"] = {  
        ["extendedclip"] = {
            component = "COMPONENT_MARKSMANRIFLE_CLIP_02",
            label = "Extended Clip",
            item = "sniper_extendedclip",
        }, 
        ["suppressor"] = {
            component = "COMPONENT_AT_AR_SUPP",
            label = "Suppressor",
            item = "sniper_suppressor",
        },  
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_LARGE_FIXED_ZOOM",
            label = "Scope",
            item = "sniper_scope",
        },  
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Flashlight",
            item = "sniper_flashlight",
        }, 
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "sniper_grip",
        }, 
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },   
        ["luxury"] = {
            component = "COMPONENT_MARKSMANRIFLE_VARMOD_LUXE",
            label = "Luxury Tint",
            item = "luxury",
        },                                           
    },
    ["WEAPON_GRENADELAUNCHER"] = {   
        ["scope"] = {
            component = "COMPONENT_AT_SCOPE_SMALL",
            label = "Scope",
            item = "grenadelauncher_scope",
        },  
        ["flashlight"] = {
            component = "COMPONENT_AT_AR_FLSH",
            label = "Flashlight",
            item = "grenadelauncher_flashlight",
        }, 
        ["grip"] = {
            component = "COMPONENT_AT_AR_AFGRIP",
            label = "Grip",
            item = "grenadelauncher_grip",
        }, 
        ["weaponcolor1"] = {
            component = "weaponcolor1",
            label = "Green Tint",
            item = "weapontint_1",
        },	
        ["weaponcolor2"] = {
            component = "weaponcolor2",
            label = "Gold Tint",
            item = "weapontint_2",
        },
        ["weaponcolor3"] = {
            component = "weaponcolor3",
            label = "Pink Tint",
            item = "weapontint_3",
        },
        ["weaponcolor4"] = {
            component = "weaponcolor4",
            label = "Army Tint",
            item = "weapontint_4",
        },
        ["weaponcolor5"] = {
            component = "weaponcolor5",
            label = "LSPD Tint",
            item = "weapontint_5",
        },
        ["weaponcolor6"] = {
            component = "weaponcolor6",
            label = "Orange Tint",
            item = "weapontint_6",
        },
        ["weaponcolor7"] = {
            component = "weaponcolor7",
            label = "Platinum Tint",
            item = "weapontint_7",
        },                                            
    },
}

--Languages ​​available.
--But you can create your own by modifying one or creating a new one.
Config.Languages = {
    ['en'] = {
        ["WEAPON_BROKEN"] = "Your weapon broke",
        ["WEAPON_FULL_BULLETS"] = "The magazine of the weapon is already loaded",
        ["WEAPON_INVALID"] = "You don't have any weapon in hand",
        ["WEAPON_NEED_REPAIR"] = "If you want to use the weapon again, you must repair it",
        ["WEAPON_NO_BROKEN"] = "This weapon is not damaged",
        ["WEAPON_INVALID_ATTACHMENT"] = "This weapon is not compatible with this plugin",
        ["WEAPON_REPEAT_ATTACHMENT"] = "You cannot put another one ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "You removed from your weapon ",

        ["REPAIR_UNAVAILABLE"] = "The repairer is not currently available",
        ["RAPAIR_PROGRESS"] = "Your weapon is being repaired...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Take your weapon",
        ["REPAIR_PRICE"] = "~b~E~w~ - Repair for $",
        ["REPAIR_TAKE"] = "Take your weapon",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Last repair",

        ["NO_MONEY"] = "You don't have enough money",
        ["NO_WEAPONS"] = "You have no weapons",
    },

    ['es'] = {
        ["WEAPON_BROKEN"] = "Tu arma se rompio",
        ["WEAPON_FULL_BULLETS"] = "El cargador del arma ya está cargado",
        ["WEAPON_INVALID"] = "No tienes ningún arma en la mano",
        ["WEAPON_NEED_REPAIR"] = "Si desea volver a usar el arma, debe repararla",
        ["WEAPON_NO_BROKEN"] = "Esta arma no esta dañada",
        ["WEAPON_INVALID_ATTACHMENT"] = "Esta arma no es compatible con este complemento",
        ["WEAPON_REPEAT_ATTACHMENT"] = "No puedes poner otro ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Quitaste de tu arma ",

        ["REPAIR_UNAVAILABLE"] = "El reparador no está disponible actualmente",
        ["RAPAIR_PROGRESS"] = "Su arma está siendo reparada...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Toma tu arma",
        ["REPAIR_PRICE"] = "~b~E~w~ - Reparar por $",
        ["REPAIR_TAKE"] = "Toma tu arma",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Ultima reparacion",

        ["NO_MONEY"] = "No tienes suficiente dinero",
        ["NO_WEAPONS"] = "No tienes armas",
	},

    ['it'] = {
        ["WEAPON_BROKEN"] = "La tua arma si è rotta",
        ["WEAPON_FULL_BULLETS"] = "Il caricatore dell'arma è già caricato",
        ["WEAPON_INVALID"] = "Non hai armi in mano",
        ["WEAPON_NEED_REPAIR"] = "Se vuoi usare di nuovo l'arma, devi ripararla",
        ["WEAPON_NO_BROKEN"] = "Quest'arma non è danneggiata",
        ["WEAPON_INVALID_ATTACHMENT"] = "Quest'arma non è compatibile con questo plugin",
        ["WEAPON_REPEAT_ATTACHMENT"] = "Non puoi metterne un altro ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Hai rimosso dalla tua arma ",

        ["REPAIR_UNAVAILABLE"] = "Il riparatore non è attualmente disponibile",
        ["RAPAIR_PROGRESS"] = "La tua arma è in riparazione...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Prendi la tua arma",
        ["REPAIR_PRICE"] = "~b~E~w~ - Ripara per $",
        ["REPAIR_TAKE"] = "Prendi la tua arma",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Ultima riparazione",

        ["NO_MONEY"] = "Non hai abbastanza soldi",
        ["NO_WEAPONS"] = "Non hai armi",
    },

    ['ru'] = {
        ["WEAPON_BROKEN"] = "Ваше оружие сломано",
        ["WEAPON_FULL_BULLETS"] = "Магазин оружия уже заряжен",
        ["WEAPON_INVALID"] = "У вас нет оружия в руке",
        ["WEAPON_NEED_REPAIR"] = "Если вы хотите снова использовать оружие, вы должны его починить",
        ["WEAPON_NO_BROKEN"] = "Это оружие не повреждено",
        ["WEAPON_INVALID_ATTACHMENT"] = "Это оружие несовместимо с этим плагином",
        ["WEAPON_REPEAT_ATTACHMENT"] = "Вы не можете поставить еще один ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Вы сняли с себя оружие ",

        ["REPAIR_UNAVAILABLE"] = "Ремонтник в настоящее время недоступен",
        ["RAPAIR_PROGRESS"] = "Ваше оружие ремонтируется...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Возьми свое оружие",
        ["REPAIR_PRICE"] = "~b~E~w~ - Ремонт за $",
        ["REPAIR_TAKE"] = "Возьми свое оружие",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Последний ремонт",

        ["NO_MONEY"] = "У вас недостаточно денег",
        ["NO_WEAPONS"] = "У вас нет оружия",
    },

    ['tr'] = {
        ["WEAPON_BROKEN"] = "Silahınız kırıldı",
        ["WEAPON_FULL_BULLETS"] = "Silahın şarjörü zaten dolu",
        ["WEAPON_INVALID"] = "Elinizde silah yok",
        ["WEAPON_NEED_REPAIR"] = "Silahı tekrar kullanmak istiyorsanız tamir etmelisiniz",
        ["WEAPON_NO_BROKEN"] = "Bu silah hasarlı değil",
        ["WEAPON_INVALID_ATTACHMENT"] = "Bu silah bu eklenti ile uyumlu değil",
        ["WEAPON_REPEAT_ATTACHMENT"] = "Başka bir tane koyamazsınız",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Silahınızdan çıkardınız",

        ["REPAIR_UNAVAILABLE"] = "Tamirci şu anda müsait değil",
        ["RAPAIR_PROGRESS"] = "Silahınız tamir ediliyor...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Silahını al",
        ["REPAIR_PRICE"] = "~b~E~w~ - $ için onarım",
        ["REPAIR_TAKE"] = "Silahını al",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Son onarım",

        ["NO_MONEY"] = "Yeterli paranız yok",
        ["NO_WEAPONS"] = "Silahınız yok",
    },

    ['pt'] = {
        ["WEAPON_BROKEN"] = "Sua arma quebrou",
        ["WEAPON_FULL_BULLETS"] = "O pente da arma já está carregado",
        ["WEAPON_INVALID"] = "Você não tem nenhuma arma em mãos",
        ["WEAPON_NEED_REPAIR"] = "Se você quiser usar a arma novamente, você deve consertá-la",
        ["WEAPON_NO_BROKEN"] = "Esta arma não está danificada",
        ["WEAPON_INVALID_ATTACHMENT"] = "Esta arma não é compatível com este plugin",
        ["WEAPON_REPEAT_ATTACHMENT"] = "Você não pode colocar outro ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Você removeu de sua arma ",

        ["REPAIR_UNAVAILABLE"] = "O reparador não está disponível no momento",
        ["RAPAIR_PROGRESS"] = "Sua arma está sendo consertada...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Pegue sua arma",
        ["REPAIR_PRICE"] = "~b~E~w~ - Reparo por $",
        ["REPAIR_TAKE"] = "Pegue sua arma",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Último reparo",

        ["NO_MONEY"] = "Você não tem dinheiro suficiente",
        ["NO_WEAPONS"] = "Você não tem armas",
    },

    ['de'] = {
        ["WEAPON_BROKEN"] = "Deine Waffe ist kaputt",
        ["WEAPON_FULL_BULLETS"] = "Das Magazin der Waffe ist bereits geladen",
        ["WEAPON_INVALID"] = "Du hast keine Waffe in der Hand",
        ["WEAPON_NEED_REPAIR"] = "Wenn Sie die Waffe wieder verwenden möchten, müssen Sie sie reparieren",
        ["WEAPON_NO_BROKEN"] = "Diese Waffe ist nicht beschädigt",
        ["WEAPON_INVALID_ATTACHMENT"] = "Diese Waffe ist nicht mit diesem Plugin kompatibel",
        ["WEAPON_REPEAT_ATTACHMENT"] = "Sie können keinen weiteren platzieren ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Du hast von deiner Waffe entfernt ",

        ["REPAIR_UNAVAILABLE"] = "Die Reparaturwerkstatt ist derzeit nicht verfügbar",
        ["RAPAIR_PROGRESS"] = "Deine Waffe wird repariert...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Nimm deine Waffe",
        ["REPAIR_PRICE"] = "~b~E~w~ - Reparatur für $",
        ["REPAIR_TAKE"] = "Nimm deine Waffe",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Letzte Reparatur",

        ["NO_MONEY"] = "Du hast nicht genug Geld",
        ["NO_WEAPONS"] = "Du hast keine Waffen",
    },

    ['fr'] = {
        ["WEAPON_BROKEN"] = "Votre arme s'est cassée",
        ["WEAPON_FULL_BULLETS"] = "Le chargeur de l'arme est déjà chargé",
        ["WEAPON_INVALID"] = "Vous n'avez aucune arme en main",
        ["WEAPON_NEED_REPAIR"] = "Si vous souhaitez réutiliser l'arme, vous devez la réparer",
        ["WEAPON_NO_BROKEN"] = "Cette arme n'est pas endommagée",
        ["WEAPON_INVALID_ATTACHMENT"] = "Cette arme n'est pas compatible avec ce plugin",
        ["WEAPON_REPEAT_ATTACHMENT"] = "Vous ne pouvez pas en mettre un autre ",
        ["WEAPON_REMOVE_ATTACHMENT"] = "Vous avez retiré votre arme ",

        ["REPAIR_UNAVAILABLE"] = "Le réparateur n'est pas disponible actuellement",
        ["RAPAIR_PROGRESS"] = "Votre arme est en cours de réparation...",
        ["REPAIR_TAKE_WEAPON"] = "~b~E~w~ - Prenez votre arme",
        ["REPAIR_PRICE"] = "~b~E~w~ - Réparation pour $",
        ["REPAIR_TAKE"] = "Prenez votre arme",
        ["REPAIR_SUCCESS"] = "~b~E~w~ - Dernière réparation",

        ["NO_MONEY"] = "Vous n'avez pas assez d'argent",
        ["NO_WEAPONS"] = "Vous n'avez pas d'armes",
    },
}