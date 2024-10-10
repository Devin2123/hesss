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

Config = {}
Config.GarbageItems = {}

--Available languages: en, it, es, fr, pt, de, ru, tr.
--But you can modify them or create your own language below.
--Don't forget to translate some things into HTML.
Config.Language = "en"

--Set true if you want the minimap to be hidden when opening the inventory.
Config.HideMinimap = true

--Here you can place if you want to hide your hud.
--Remember to disable HideMap if necessary.
--IMPORTANT: This configuration will only work if your hud brings this function. You should add it in the functions ToggleHudTrue(toggle) and ToggleHudFalse(toggle) below.
Config.ToggleHud = true

--Here you can choose whether to use Quasar's original Armor.
--You can set false if you want to use your own armor script.
Config.UseableArmor = true

--This function is very basic, you only raise your hands by pressing the X key by default.
--In case you already have a script to do this, you can set it to false.
--This function is important, since the dependency to rob another player is that they raise their hands.
Config.HandsUp = true

--Choose the time to update the garbage cans.
--The time is in milliseconds, 3600000 = 60 minutes.
Config.GarbageRefreshTime = 3600000

--Modify your ESX-based framework here.
Config.getSharedObject = "rare5m:getSharedObject"

--Maximum weight for players.
Config.MaxWeight = "120000"

--Here select if you want to use the progressbar, for example when you use Crafting.
--Below you can modify your progressbar.
Config.Progbars = true

--Inventory keys and more.
--Hotbar can only be used with 1, 2, 3, 4 and 5, so we won't add that config.
Config.Keys = {
    ["OpenInventory"] = "F2",
    ["OpenHotbar"] = "TAB",
    ["OpenVending"] = "E",
    ["OpenCustomShop"] = "E",
    ["OpenStash"] = "E",
}

--Here you have all the available inventory commands.
--If you use any radial menu, you can steal players with this event.
--TriggerClientEvent('inventory:client:search', source)
Config.Commands = {
    ["fix"] = "inventoryfix",
    ["giveitem"] = "giveitem",
    ["randomitems"] = "randomitems",
    ["search"] = "search",
    ["handsup"] = "handsup",
    ["setpremiumcoins"] = "setpremiumcoins",
    ["addpremiumcoins"] = "addpremiumcoins",
    ["removeallpremiumcoins"] = "removeallpremiumcoins",
    ["removepremiumcoins"] = "removepremiumcoins",
    ["getpremiumcoins"] = "getpremiumcoins",
}

--Configure the markers here, you even have the option to enable or disable it.
--https://docs.fivem.net/docs/game-references/markers/
Config.StashMarker = { 
    enablemarker = false,
    type = 2, 
    scale = {x = 0.2, y = 0.2, z = 0.1}, 
    colour = {r = 71, g = 181, b = 255, a = 120},
    movement = 1 --Use 0 to disable movement
}

--Configure the markers here, you even have the option to enable or disable it.
--https://docs.fivem.net/docs/game-references/markers/
Config.ShopMarker = { 
    enablemarker = false,
    type = 2, 
    scale = {x = 0.2, y = 0.2, z = 0.1}, 
    colour = {r = 71, g = 181, b = 255, a = 120},
    movement = 1 --Use 0 to disable movement
}

--Configure the markers here, you can enable the text on the drops as well.
--https://docs.fivem.net/docs/game-references/markers/
Config.DropMarker = { 
    disabledtext = false,
    type = 2, 
    scale = {x = 0.2, y = 0.2, z = 0.1}, 
    colour = {r = 71, g = 181, b = 255, a = 120},
    movement = 1 --Use 0 to disable movement
}

--Here you can choose your event to hide the hud.
--If you don't want this to exist, just put a false in the Config.ToggleHud
function ToggleHudTrue(toggle)
    TriggerEvent('qs-hud:toggleHud', true)
end

function ToggleHudFalse(toggle)
    TriggerEvent('qs-hud:toggleHud', false)
end

--Here you can configure your custom progressbar.
--We highly recommend progressbar or mythic_progbar, they work the same way.
function CraftingProgress(progress)
    exports['progressbar']:Progress({
        name = "unique_action_name",
        duration = 10000,
        label = "Crafting...",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "mini@repair",
            anim = "fixing_a_player",
        },
    }, function(status)
        if not status then
            --Do Something If Event Wasn't Cancelled
        end
    end)
    Citizen.Wait(10000)
    StopAnimTask(PlayerPedId(), "mini@repair", "fixing_a_player", 1.0)
end

--Here you can configure your custom progressbar.
--We highly recommend progressbar or mythic_progbar, they work the same way.
function ArmorProgress(progress)
    exports['progressbar']:Progress({
        name = "unique_action_name",
        duration = 5000,
        label = "Placing armor...",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
    }, function(status)
        if not status then
            --Do Something If Event Wasn't Cancelled
        end
    end)
    Citizen.Wait(5000)
end

--Here you can configure your custom progressbar.
--We highly recommend progressbar or mythic_progbar, they work the same way.
function HeavyArmorProgress(progress)
    exports['progressbar']:Progress({
        name = "unique_action_name",
        duration = 5000,
        label = "Placing heavy armor...",
        useWhileDead = false,
        canCancel = false,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
    }, function(status)
        if not status then
            --Do Something If Event Wasn't Cancelled
        end
    end)
    Citizen.Wait(5000)
end

--Customize your notification system here.
function SendTextMessage(msg)
	--SetNotificationTextEntry('STRING')
	--AddTextComponentString(msg)
	--DrawNotification(0,1)
    
	exports['mythic_notify']:DoHudText('inform', msg)
end

--You can create Stashes for many jobs, you can use the following as a reference.
Config.Stashes = {
    ["ambulance"] = {
        label = "Medico",
        Stash = {
            text = "Stash",
            coords = vector3(1.0, 0.0, 71.0),
        },
    },

    ["police"] = {
        label = "Policia",
        Stash = {
            text = "Stash",
            coords = vector3(283.80, -976.50, 29.41),
        },
    },
}

--You can also create custom job stores, you can use the following as an example.
Config.CustomShops = {
    ["ambulance"] = {
        label = "Medic",
        Shop = {
            text = "Medical store",
            coords = vector3(0.0, 0.0, 71.0),
            Items = {
                [1] = {
                    name = "bandage",
                    price = 60,
                    amount = 100,
                    info = {},
                    type = "item",
                    slot = 1,
                },
                [2] = {
                    name = "medikit",
                    price = 60,
                    amount = 100,
                    info = {},
                    type = "item",
                    slot = 2,
                },
            }
        }
    },  
    ["police"] = {
        label = "Police",
        Shop = {
            text = "Armory",
            coords = vector3(0.0, 0.0, 71.0),
            Items = {
                [1] = {
                    name = "bandage",
                    price = 60,
                    amount = 100,
                    info = {},
                    type = "item",
                    slot = 1,
                },
                [2] = {
                    name = "medikit",
                    price = 60,
                    amount = 100,
                    info = {},
                    type = "item",
                    slot = 2,
                },
            }
        }
    }, 
}

--These are the vending machines available.
--You can use these pages to add more.
--https://gta-objects.xyz/ or http://www.test.raccoon72.ru/
Config.VendingObjects = {
    "prop_vend_soda_01",
    "prop_vend_soda_02",
    "prop_vend_water_01"
}

--I do not recommend adding much, it could break your optimization, but here you can modify the garbage system prop.
--[https://gta-objects.xyz/objects]
--[http://www.test.raccoon72.ru/]
Config.GarbageProps = {
    [218085040] = true,
    [666561306] = true, 
	[-58485588] = true,
	[-206690185] = true,
	[1511880420] = true,
    [682791951] = true, 
}

--Add the objects that will be sold in the vending machine.
Config.VendingItem = {
    [1] = {
        name = "kurkakola",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 1,
    },
    [2] = {
        name = "water_bottle",
        price = 4,
        amount = 50,
        info = {},
        type = "item",
        slot = 2,
    },
}

--Configure here the objects that are in the garbage cans.
--There are many because each garbage can will have one of these randomly.
Config.RandomGarbageItems = {
    [1] = {
        [1] = {
            name = "aluminum",
            amount = math.random(1, 4),
            price = 4,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "plastic",
            amount = math.random(1, 7),
            price = 4,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    [2] = {
        [1] = {
            name = "plastic",
            amount = math.random(1, 7),
            price = 4,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "metalscrap",
            amount = math.random(1, 5),
            price = 4,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    [3] = {
        [1] = {
            name = "glass",
            amount = math.random(1, 7),
            price = 4,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "joint",
            amount = 1,
            price = 4,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    [4] = {
        [1] = {
            name = "lighter",
            amount = math.random(1, 2),
            price = 4,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "metalscrap",
            amount = math.random(1, 7),
            price = 4,
            info = {},
            type = "item",
            slot = 2,
        },
    },
    [5] = {
        [1] = {
            name = "metalscrap",
            amount = math.random(1, 10),
            price = 4,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "rubber",
            amount = math.random(1, 15),
            price = 4,
            info = {},
            type = "item",
            slot = 2,
        },
    },
}

--Here you must add the crafting objects.
--Remember that it must be the same as the qs-crafting config.
Config.CraftingItems = {
    [1] = {
        name = "lockpick",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 22,
            ["plastic"] = 32,
        },
        type = "item",
        slot = 1,
        threshold = 0,
        points = 1,
    },
    [2] = {
        name = "screwdriverset",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 42,
        },
        type = "item",
        slot = 2,
        threshold = 0,
        points = 2,
    },
    [3] = {
        name = "electronickit",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 30,
            ["plastic"] = 45,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 3,
        threshold = 0,
        points = 3,
    },
    [4] = {
        name = "radioscanner",
        amount = 50,
        info = {},
        costs = {
            ["electronickit"] = 2,
            ["plastic"] = 52,
            ["steel"] = 40,
        },
        type = "item",
        slot = 4,
        threshold = 0,
        points = 4,
    },
    [5] = {
        name = "gatecrack",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 10,
            ["plastic"] = 50,
            ["aluminum"] = 30,
            ["iron"] = 17,
            ["electronickit"] = 1,
        },
        type = "item",
        slot = 5,
        threshold = 120,
        points = 5,
    },
    [6] = {
        name = "handcuffs",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 36,
            ["steel"] = 24,
            ["aluminum"] = 28,
        },
        type = "item",
        slot = 6,
        threshold = 160,
        points = 6,
    },
    [7] = {
        name = "repairkit",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 32,
            ["steel"] = 43,
            ["plastic"] = 61,
        },
        type = "item",
        slot = 7,
        threshold = 200,
        points = 7,
    },
    [8] = {
        name = "pistol_ammo",
        amount = 50,
        info = {},
        costs = {
            ["metalscrap"] = 50,
            ["steel"] = 37,
            ["copper"] = 26,
        },
        type = "item",
        slot = 8,
        threshold = 250,
        points = 8,
    },
    [9] = {
        name = "ironoxide",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 60,
            ["glass"] = 30,
        },
        type = "item",
        slot = 9,
        threshold = 300,
        points = 9,
    },
    [10] = {
        name = "aluminumoxide",
        amount = 50,
        info = {},
        costs = {
            ["aluminum"] = 60,
            ["glass"] = 30,
        },
        type = "item",
        slot = 10,
        threshold = 300,
        points = 10,
    },
    [11] = {
        name = "armor",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 33,
            ["steel"] = 44,
            ["plastic"] = 55,
            ["aluminum"] = 22,
        },
        type = "item",
        slot = 11,
        threshold = 350,
        points = 11,
    },
    [12] = {
        name = "drill",
        amount = 50,
        info = {},
        costs = {
            ["iron"] = 50,
            ["steel"] = 50,
            ["screwdriverset"] = 3,
            ["advancedlockpick"] = 2,
        },
        type = "item",
        slot = 12,
        threshold = 1750,
        points = 12,
    },
}

--Here you must add the crafting objects.
--Remember that it must be the same as the qs-crafting config.
Config.AttachmentCrafting = {
    ["location"] = {x = 88.91, y = 3743.88, z = 40.77, h = 66.5, r = 1.0}, 
    ["items"] = {
        [1] = {
            name = "pistol_extendedclip",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 10,
                ["steel"] = 10,
                ["rubber"] = 10,
            },
            type = "item",
            slot = 1,
            threshold = 0,
            points = 1,
        },
        [2] = {
            name = "pistol_suppressor",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 165,
                ["steel"] = 285,
                ["rubber"] = 75,
            },
            type = "item",
            slot = 2,
            threshold = 10,
            points = 2,
        },
        [3] = {
            name = "rifle_extendedclip",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 190,
                ["steel"] = 305,
                ["rubber"] = 85,
                ["smg_extendedclip"] = 1,
            },
            type = "item",
            slot = 7,
            threshold = 25,
            points = 8,
        },
        [4] = {
            name = "rifle_drummag",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 205,
                ["steel"] = 340,
                ["rubber"] = 110,
                ["smg_extendedclip"] = 2,
            },
            type = "item",
            slot = 8,
            threshold = 50,
            points = 8,
        },
        [5] = {
            name = "smg_flashlight",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 230,
                ["steel"] = 365,
                ["rubber"] = 130,
            },
            type = "item",
            slot = 3,
            threshold = 75,
            points = 3,
        },
        [6] = {
            name = "smg_extendedclip",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 255,
                ["steel"] = 390,
                ["rubber"] = 145,
            },
            type = "item",
            slot = 4,
            threshold = 100,
            points = 4,
        },
        [7] = {
            name = "smg_suppressor",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 270,
                ["steel"] = 435,
                ["rubber"] = 155,
            },
            type = "item",
            slot = 5,
            threshold = 150,
            points = 5,
        },
        [8] = {
            name = "smg_scope",
            amount = 50,
            info = {},
            costs = {
                ["metalscrap"] = 300,
                ["steel"] = 469,
                ["rubber"] = 170,
            },
            type = "item",
            slot = 6,
            threshold = 200,
            points = 6,
        },
    }
}

--These are the slots available in the players' inventories.
--I do not recommend modifying it.
MaxInventorySlots = 41

--Here you can modify the cars that will have the trunk in front.
BackEngineVehicles = {
    'ninef',
    'adder',
    'vagner',
    't20',
    'infernus',
    'zentorno',
    'reaper',
    'comet2',
    'comet3',
    'jester',
    'jester2',
    'cheetah',
    'cheetah2',
    'prototipo',
    'turismor',
    'pfister811',
    'ardent',
    'nero',
    'nero2',
    'tempesta',
    'vacca',
    'bullet',
    'osiris',
    'entityxf',
    'turismo2',
    'fmj',
    're7b',
    'tyrus',
    'italigtb',
    'penetrator',
    'monroe',
    'ninef2',
    'stingergt',
    'surfer',
    'surfer2',
    'comet3',
}

--Don't touch this setting.
Config.MaximumAmmoValues = {
    ["pistol"] = 250,
    ["smg"] = 250,
    ["shotgun"] = 200,
    ["rifle"] = 250,
    ["mg"] = 250,
    ["sniper"] = 250,
    ["grenadelauncher"] = 250,
}

local StringCharset = {}
local NumberCharset = {}

for i = 48,  57 do table.insert(NumberCharset, string.char(i)) end
for i = 65,  90 do table.insert(StringCharset, string.char(i)) end
for i = 97, 122 do table.insert(StringCharset, string.char(i)) end

Config.RandomStr = function(length)
	if length > 0 then
		return Config.RandomStr(length-1) .. StringCharset[math.random(1, #StringCharset)]
	else
		return ''
	end
end

Config.RandomInt = function(length)
	if length > 0 then
		return Config.RandomInt(length-1) .. NumberCharset[math.random(1, #NumberCharset)]
	else
		return ''
	end
end

--Languages ​​available.
--But you can create your own by modifying one or creating a new one.
--Don't forget to translate some things into HTML.
Config.Languages = {
    ['en'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Buy drinks",
        ["DROP_TEXT"] = "rare5marded objects",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Stash-",
        ["TRUNK_LABEL"] = "Trunk-",
        ["GLOVEBOX_LABEL"] = "Glovebox-",
        ["PLAYER_LABEL"] = "Player-",
        ["GROUND_LABEL"] = "Ground-",
        ["GROUND_ANTIDUPE"] = "ground", --IMPORTANT: This must be called as ["GARBAGE_LABEL"] but without hyphens or capital letters.
        ["GARBAGE_LABEL"] = "Garbage-",
        ["VENDING_LABEL"] = "Vending machine",

        ["INVENTORY_PLAYER"] = "Player Inventory",
        ["INVENTORY_SECOND"] = "Ground",
        ["INVENTORY_USE"] = "USE",
        ["INVENTORY_GIVE"] = "GIVE",
        ["INVENTORY_RIFLE_AMMO"] = "7.62",
        ["INVENTORY_SHOTGUN_AMMO"] = "12 Gauge",
        ["INVENTORY_PISTOL_AMMO"] = "9mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Grenade",
        ["INVENTORY_SNIPER_AMMO"] = "12.7mm",
        ["INVENTORY_NONE_AMMO"] = "Does not use bullets",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Exit",
        ["INVENTORY_NAME"] = "Name: ",
        ["INVENTORY_SURNAME"] = "Surname: ",
        ["INVENTORY_BIRTHDATE"] = "Date of birth: ",
        ["INVENTORY_GENDER"] = "Gender: ",
        ["INVENTORY_LICENSE"] = "License: ",
        ["INVENTORY_AMMUNITION"] = "Ammunition: ",
        ["INVENTORY_ADDITIONS"] = "Additions: ",
        ["INVENTORY_CRIME_SCENE"] = "Crime scene: ",
        ["INVENTORY_CALIBER"] = "Caliber: ",
        ["INVENTORY_DNA_CODE"] = "DNA Code: ",
        ["INVENTORY_TYPE_BULLET"] = "Type Bullet: ",
        ["INVENTORY_BLOOD_TYPE"] = "Blood Type: ",
        ["INVENTORY_FINGERPRINT"] = "Fingerprint: ",
        ["INVENTORY_TYPE_BULLET"] = "Type Bullet: ",
        ["INVENTORY_BROKEN_WEAPON"] = "BROKEN",
        ["INVENTORY_USE_ITEM"] = "Use",
        ["INVENTORY_ADD_ITEM"] = "Add",
        ["INVENTORY_REMOVE_ITEM"] = "Remove",
        ["INVENTORY_COMBINE_ITEM"] = "If you combine these items you get: ",
        ["INVENTORY_QUALITY"] = "Durability - ",
        ["INVENTORY_SERIAL"] = "Serial number: ",
        ["INVENTORY_ATTACHMENT"] = "Attachments",
        ["INVENTORY_NO_ATTACHMENTS"] = "This weapon does not contain accessories...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Accessories are not available for this weapon",
        ["INVENTORY_INVALID"] = "Item does not exist?",
        ["INVENTORY_DONT_BUY"] = "You cannot sell this item",
        ["INVENTORY_NO_ITEM"] = "You don't have this item",
        ["INVENTORY_YOU_BUY"] = "You purchased successfully ",
        ["INVENTORY_BUY_SUCCESS"] = "You purchased successfully",
        ["INVENTORY_CRAFTING_ERROR"] = "You don't have the right components",
        ["INVENTORY_NO_ITEM"] = "You don't have this item",
        ["INVENTORY_OPENED"] = "You cannot send an item if the other player has their inventory open...",
        ["INVENTORY_QUANTITY"] = "You must choose a quantity of 1 or higher",
        ["INVENTORY_GIVE_ERROR"] = "This person cannot take this item",
        ["INVENTORY_GIVE_ITEM"] = "You sent: ",
        ["INVENTORY_GIVE_SUCCESS"] = "You delivered ",

        ["VEHICLE_LOCKED"] = "The vehicle is locked",
        ["PLAYER_SEARCH"] = "The player does not have his hands raised...",
        ["WENT_WRONG"] = "Something went wrong",
        ["NO_PLAYERS"] = "There are no players nearby",
        ["PLAYER_NOT_EXIST"] = "The player does not exist or is offline",
        ["NO_MONEY"] = "You don't have enough money",
        ["INVALID_ITEM"] = "Object not found",
        ["SEND_ERROR"] = "The article could not be delivered",

        ["SET_PREMIUMCOINS"] = "You delivered premium coins to ",
        ["ADD_PREMIUMCOINS"] = "You added premium coins to ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "You removed all premium coins from ",
        ["REMOVE_PREMIUMCOINS"] = "You removed premium coins from ",
        ["GET_PREMIUMCOINS"] = "Player's Premium Coins: ",
        ["PREMIUM_QUANTITY"] = ", quantity: ",
    },

    ['es'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Comprar bebidas",
        ["DROP_TEXT"] = "Objetos descartados",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Alijo-",
        ["TRUNK_LABEL"] = "Tronco-",
        ["GLOVEBOX_LABEL"] = "Guantera-",
        ["PLAYER_LABEL"] = "Jugador-",
        ["GROUND_LABEL"] = "Tierra-",
        ["GROUND_ANTIDUPE"] = "suelo", --IMPORTANTE: Debe llamarse ["GARBAGE_LABEL"] pero sin guiones ni letras mayúsculas.
        ["GARBAGE_LABEL"] = "Basura-",
        ["VENDING_LABEL"] = "Máquina expendedora",

        ["INVENTORY_PLAYER"] = "Inventario de jugadores",
        ["INVENTORY_SECOND"] = "Tierra",
        ["INVENTORY_USE"] = "USE",
        ["INVENTORY_GIVE"] = "DAR",
        ["INVENTORY_RIFLE_AMMO"] = "7.62",
        ["INVENTORY_SHOTGUN_AMMO"] = "Calibre 12",
        ["INVENTORY_PISTOL_AMMO"] = "9 mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Granada",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 mm",
        ["INVENTORY_NONE_AMMO"] = "No usa viñetas",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Salir",
        ["INVENTORY_NAME"] = "Nombre: ",
        ["INVENTORY_SURNAME"] = "Apellido: ",
        ["INVENTORY_BIRTHDATE"] = "Fecha de nacimiento: ",
        ["INVENTORY_GENDER"] = "Sexo: ",
        ["INVENTORY_LICENSE"] = "Licencia: ",
        ["INVENTORY_AMMUNITION"] = "Municiones: ",
        ["INVENTORY_ADDITIONS"] = "Adiciones: ",
        ["INVENTORY_CRIME_SCENE"] = "Escena del crimen: ",
        ["INVENTORY_CALIBER"] = "Calibre: ",
        ["INVENTORY_DNA_CODE"] = "Código de ADN: ",
        ["INVENTORY_TYPE_BULLET"] = "Escriba viñeta: ",
        ["INVENTORY_BLOOD_TYPE"] = "Tipo de sangre: ",
        ["INVENTORY_FINGERPRINT"] = "Huella digital: ",
        ["INVENTORY_TYPE_BULLET"] = "Escriba viñeta: ",
        ["INVENTORY_BROKEN_WEAPON"] = "ROTO",
        ["INVENTORY_USE_ITEM"] = "Usar",
        ["INVENTORY_ADD_ITEM"] = "Agregar",
        ["INVENTORY_REMOVE_ITEM"] = "Eliminar",
        ["INVENTORY_COMBINE_ITEM"] = "Si combina estos elementos, obtiene: ",
        ["INVENTORY_QUALITY"] = "Durabilidad -",
        ["INVENTORY_SERIAL"] = "Número de serie: ",
        ["INVENTORY_ATTACHMENT"] = "Archivos adjuntos",
        ["INVENTORY_NO_ATTACHMENTS"] = "Esta arma no contiene accesorios...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Los accesorios no están disponibles para esta arma",
        ["INVENTORY_INVALID"] = "¿El artículo no existe?",
        ["INVENTORY_DONT_BUY"] = "No puede vender este artículo",
        ["INVENTORY_NO_ITEM"] = "No tienes este artículo",
        ["INVENTORY_YOU_BUY"] = "Compraste correctamente",
        ["INVENTORY_BUY_SUCCESS"] = "Compraste correctamente",
        ["INVENTORY_CRAFTING_ERROR"] = "No tiene los componentes adecuados",
        ["INVENTORY_NO_ITEM"] = "No tienes este artículo",
        ["INVENTORY_OPENED"] = "No puedes enviar un artículo si el otro jugador tiene su inventario abierto...",
        ["INVENTORY_QUANTITY"] = "Debe elegir una cantidad de 1 o más",
        ["INVENTORY_GIVE_ERROR"] = "Esta persona no puede tomar este artículo",
        ["INVENTORY_GIVE_ITEM"] = "Enviaste: ",
        ["INVENTORY_GIVE_SUCCESS"] = "Entregaste",

        ["VEHICLE_LOCKED"] = "El vehículo está bloqueado",
        ["PLAYER_SEARCH"] = "El jugador no tiene las manos levantadas...",
        ["WENT_WRONG"] = "Algo salió mal",
        ["NO_PLAYERS"] = "No hay jugadores cerca",
        ["PLAYER_NOT_EXIST"] = "El reproductor no existe o está desconectado",
        ["NO_MONEY"] = "No tienes suficiente dinero",
        ["INVALID_ITEM"] = "Objeto no encontrado",
        ["SEND_ERROR"] = "No se pudo entregar el artículo",

        ["SET_PREMIUMCOINS"] = "Entregaste monedas premium a ",
        ["ADD_PREMIUMCOINS"] = "Añadiste monedas premium a ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Eliminaste todas las monedas premium de ",
        ["REMOVE_PREMIUMCOINS"] = "Eliminaste monedas premium a ",
        ["GET_PREMIUMCOINS"] = "Monedas premium del jugador: ",
        ["PREMIUM_QUANTITY"] = ", cantidad: ",
    },

    ['de'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Getränke kaufen",
        ["DROP_TEXT"] = "Verworfene Objekte",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Stash-",
        ["TRUNK_LABEL"] = "Stamm-",
        ["GLOVEBOX_LABEL"] = "Handschuhfach-",
        ["PLAYER_LABEL"] = "Spieler-",
        ["GROUND_LABEL"] = "Erd-",
        ["GROUND_ANTIDUPE"] = "ground", --WICHTIG: Dies muss als ["GARBAGE_LABEL"] aufgerufen werden, jedoch ohne Bindestriche oder Großbuchstaben.
        ["GARBAGE_LABEL"] = "Müll-",
        ["VENDING_LABEL"] = "Verkaufsautomat",

        ["INVENTORY_PLAYER"] = "Spielerinventar",
        ["INVENTORY_SECOND"] = "Boden",
        ["INVENTORY_USE"] = "USE",
        ["INVENTORY_GEBEN"] = "GEBEN",
        ["INVENTORY_RIFLE_AMMO"] = "7.62",
        ["INVENTORY_SHOTGUN_AMMO"] = "12 Spur",
        ["INVENTORY_PISTOL_AMMO"] = "9mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Granate",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 mm",
        ["INVENTORY_NONE_AMMO"] = "Verwendet keine Kugeln",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Beenden",
        ["INVENTORY_NAME"] = "Name: ",
        ["INVENTORY_SURNAME"] = "Nachname: ",
        ["INVENTORY_BIRTHDATE"] = "Geburtsdatum: ",
        ["INVENTORY_GENDER"] = "Geschlecht: ",
        ["INVENTORY_LICENSE"] = "Lizenz: ",
        ["INVENTORY_AMMUNITION"] = "Munition: ",
        ["INVENTORY_ADDITIONS"] = "Ergänzungen: ",
        ["INVENTORY_CRIME_SCENE"] = "Tatort: ​​",
        ["INVENTORY_CALIBER"] = "Kaliber: ",
        ["INVENTORY_DNA_CODE"] = "DNA-Code: ",
        ["INVENTORY_TYPE_BULLET"] = "Typ Bullet: ",
        ["INVENTORY_BLOOD_TYPE"] = "Bluttyp: ",
        ["INVENTORY_FINGERPRINT"] = "Fingerabdruck: ",
        ["INVENTORY_TYPE_BULLET"] = "Typ Bullet: ",
        ["INVENTORY_BROKEN_WEAPON"] = "BROKEN",
        ["INVENTORY_USE_ITEM"] = "Verwenden",
        ["INVENTORY_ADD_ITEM"] = "Hinzufügen",
        ["INVENTORY_REMOVE_ITEM"] = "Entfernen",
        ["INVENTORY_COMBINE_ITEM"] = "Wenn Sie diese Gegenstände kombinieren, erhalten Sie: ",
        ["INVENTORY_QUALITY"] = "Haltbarkeit - ",
        ["INVENTORY_SERIAL"] = "Seriennummer: ",
        ["INVENTORY_ATTACHMENT"] = "Anhänge",
        ["INVENTORY_NO_ATTACHMENTS"] = "Diese Waffe enthält kein Zubehör...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Für diese Waffe ist kein Zubehör verfügbar",
        ["INVENTORY_INVALID"] = "Gegenstand existiert nicht?",
        ["INVENTORY_DONT_BUY"] = "Sie können diesen Gegenstand nicht verkaufen",
        ["INVENTORY_NO_ITEM"] = "Sie haben diesen Gegenstand nicht",
        ["INVENTORY_YOU_BUY"] = "Sie haben erfolgreich gekauft ",
        ["INVENTORY_BUY_SUCCESS"] = "Sie haben erfolgreich gekauft",
        ["INVENTORY_CRAFTING_ERROR"] = "Sie haben nicht die richtigen Komponenten",
        ["INVENTORY_NO_ITEM"] = "Sie haben diesen Gegenstand nicht",
        ["INVENTORY_OPENED"] = "Du kannst keinen Gegenstand senden, wenn das Inventar des anderen Spielers geöffnet ist...",
        ["INVENTORY_QUANTITY"] = "Sie müssen eine Menge von 1 oder höher auswählen",
        ["INVENTORY_GIVE_ERROR"] = "Diese Person kann diesen Gegenstand nicht nehmen",
        ["INVENTORY_GIVE_ITEM"] = "Du hast gesendet: ",
        ["INVENTORY_GIVE_SUCCESS"] = "Sie haben geliefert",

        ["VEHICLE_LOCKED"] = "Das Fahrzeug ist verriegelt",
        ["PLAYER_SEARCH"] = "De speler heeft zijn handen niet opgestoken...",
        ["WENT_WRONG"] = "Etwas ist schief gelaufen",
        ["NO_PLAYERS"] = "Es sind keine Spieler in der Nähe",
        ["PLAYER_NOT_EXIST"] = "Der Spieler existiert nicht oder ist offline",
        ["NO_MONEY"] = "Du hast nicht genug Geld",
        ["INVALID_ITEM"] = "Objekt nicht gefunden",
        ["SEND_ERROR"] = "Der Artikel konnte nicht geliefert werden",

        ["SET_PREMIUMCOINS"] = "Je hebt premium munten geleverd aan ",
        ["ADD_PREMIUMCOINS"] = "Je hebt premium munten toegevoegd aan ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Je hebt alle premium munten verwijderd van ",
        ["REMOVE_PREMIUMCOINS"] = "Je hebt premium munten verwijderd van ",
        ["GET_PREMIUMCOINS"] = "Premiummunten voor spelers: ",
        ["PREMIUM_QUANTITY"] = ", aantal: ",
    },

    ['fr'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Acheter des boissons",
        ["DROP_TEXT"] = "Objets rejetés",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Stash-",
        ["TRUNK_LABEL"] = "Trunk-",
        ["GLOVEBOX_LABEL"] = "Glovebox-",
        ["PLAYER_LABEL"] = "Joueur-",
        ["GROUND_LABEL"] = "Ground-",
        ["GROUND_ANTIDUPE"] = "ground", --IMPORTANT : cela doit être appelé ["GARBAGE_LABEL"] mais sans tirets ni majuscules.
        ["GARBAGE_LABEL"] = "Ordures-",
        ["VENDING_LABEL"] = "Distributeur automatique",

        ["INVENTORY_PLAYER"] = "Inventaire du joueur",
        ["INVENTORY_SECOND"] = "Terre",
        ["INVENTORY_USE"] = "UTILISER",
        ["INVENTORY_GIVE"] = "DONNER",
        ["INVENTORY_RIFLE_AMMO"] = "7.62",
        ["INVENTORY_SHOTGUN_AMMO"] = "Calibre 12",
        ["INVENTORY_PISTOL_AMMO"] = "9mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Grenade",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 mm",
        ["INVENTORY_NONE_AMMO"] = "N'utilise pas de puces",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Quitter",
        ["INVENTORY_NAME"] = "Nom : ",
        ["INVENTORY_SURNAME"] = "Nom : ",
        ["INVENTORY_BIRTHDATE"] = "Date de naissance : ",
        ["INVENTORY_GENDER"] = "Sexe : ",
        ["INVENTORY_LICENSE"] = "Licence : ",
        ["INVENTORY_AMMUNITION"] = "Munitions : ",
        ["INVENTORY_ADDITIONS"] = "Ajouts : ",
        ["INVENTORY_CRIME_SCENE"] = "Scène de crime : ",
        ["INVENTORY_CALIBER"] = "Calibre : ",
        ["INVENTORY_DNA_CODE"] = "Code ADN : ",
        ["INVENTORY_TYPE_BULLET"] = "Tapez Puce : ",
        ["INVENTORY_BLOOD_TYPE"] = "Type sanguin : ",
        ["INVENTORY_FINGERPRINT"] = "Empreinte digitale : ",
        ["INVENTORY_TYPE_BULLET"] = "Tapez Puce : ",
        ["INVENTORY_BROKEN_WEAPON"] = "CASSÉ",
        ["INVENTORY_USE_ITEM"] = "Utiliser",
        ["INVENTORY_ADD_ITEM"] = "Ajouter",
        ["INVENTORY_REMOVE_ITEM"] = "Supprimer",
        ["INVENTORY_COMBINE_ITEM"] = "Si vous combinez ces éléments, vous obtenez : ",
        ["INVENTORY_QUALITY"] = "Durabilité - ",
        ["INVENTORY_SERIAL"] = "Numéro de série : ",
        ["INVENTORY_ATTACHMENT"] = "Pièces jointes",
        ["INVENTORY_NO_ATTACHMENTS"] = "Cette arme ne contient pas d'accessoires...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Les accessoires ne sont pas disponibles pour cette arme",
        ["INVENTORY_INVALID"] = "L'élément n'existe pas ?",
        ["INVENTORY_DONT_BUY"] = "Vous ne pouvez pas vendre cet objet",
        ["INVENTORY_NO_ITEM"] = "Vous n'avez pas cet élément",
        ["INVENTORY_YOU_BUY"] = "Vous avez acheté avec succès",
        ["INVENTORY_BUY_SUCCESS"] = "Vous avez acheté avec succès",
        ["INVENTORY_CRAFTING_ERROR"] = "Vous n'avez pas les bons composants",
        ["INVENTORY_NO_ITEM"] = "Vous n'avez pas cet élément",
        ["INVENTORY_OPENED"] = "Vous ne pouvez pas envoyer un objet si l'autre joueur a son inventaire ouvert...",
        ["INVENTORY_QUANTITY"] = "Vous devez choisir une quantité de 1 ou plus",
        ["INVENTORY_GIVE_ERROR"] = "Cette personne ne peut pas prendre cet objet",
        ["INVENTORY_GIVE_ITEM"] = "Vous avez envoyé : ",
        ["INVENTORY_GIVE_SUCCESS"] = "Vous avez livré",

        ["VEHICLE_LOCKED"] = "Le véhicule est verrouillé",
        ["PLAYER_SEARCH"] = "Le joueur n'a pas les mains levées...",
        ["WENT_WRONG"] = "Une erreur s'est produite",
        ["NO_PLAYERS"] = "Il n'y a aucun joueur à proximité",
        ["PLAYER_NOT_EXIST"] = "Le lecteur n'existe pas ou est hors ligne",
        ["NO_MONEY"] = "Vous n'avez pas assez d'argent",
        ["INVALID_ITEM"] = "Objet non trouvé",
        ["SEND_ERROR"] = "L'article n'a pas pu être livré",

        ["SET_PREMIUMCOINS"] = "Vous avez livré des pièces premium à ",
        ["ADD_PREMIUMCOINS"] = "Vous avez ajouté des pièces premium à ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Vous avez supprimé toutes les pièces premium de ",
        ["REMOVE_PREMIUMCOINS"] = "Vous avez supprimé des pièces premium de ",
        ["GET_PREMIUMCOINS"] = "Pièces premium du joueur: ",
        ["PREMIUM_QUANTITY"] = ", quantité : ",
    },

    ['pt'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Compre bebidas",
        ["DROP_TEXT"] = "Objetos descartados",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Esconder-",
        ["TRUNK_LABEL"] = "Tronco-",
        ["GLOVEBOX_LABEL"] = "Caixa de luvas-",
        ["PLAYER_LABEL"] = "Jogador-",
        ["GROUND_LABEL"] = "Solo-",
        ["GROUND_ANTIDUPE"] = "solo", --IMPORTANTE: Deve ser chamado de ["GARBAGE_LABEL"], mas sem hifens ou letras maiúsculas.
        ["GARBAGE_LABEL"] = "Lixo-",
        ["VENDING_LABEL"] = "Máquina de venda automática",

        ["INVENTORY_PLAYER"] = "Inventário de jogadores",
        ["INVENTORY_SECOND"] = "Solo",
        ["INVENTORY_USE"] = "USE",
        ["INVENTORY_GIVE"] = "DAR",
        ["INVENTORY_RIFLE_AMMO"] = "7,62",
        ["INVENTORY_SHOTGUN_AMMO"] = "Calibre 12",
        ["INVENTORY_PISTOL_AMMO"] = "9 mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Granada",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 mm",
        ["INVENTORY_NONE_AMMO"] = "Não usa marcadores",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Sair",
        ["INVENTORY_NAME"] = "Nome: ",
        ["INVENTORY_SURNAME"] = "Sobrenome: ",
        ["INVENTORY_BIRTHDATE"] = "Data de nascimento: ",
        ["INVENTORY_GENDER"] = "Sexo: ",
        ["INVENTORY_LICENSE"] = "Licença: ",
        ["INVENTORY_AMMUNITION"] = "Munições: ",
        ["INVENTORY_ADDITIONS"] = "Adições: ",
        ["INVENTORY_CRIME_SCENE"] = "Cena do crime: ",
        ["INVENTORY_CALIBER"] = "Calibre: ",
        ["INVENTORY_DNA_CODE"] = "Código DNA: ",
        ["INVENTORY_TYPE_BULLET"] = "Tipo de marcador: ",
        ["INVENTORY_BLOOD_TYPE"] = "Tipo sanguíneo: ",
        ["INVENTORY_FINGERPRINT"] = "Impressão digital: ",
        ["INVENTORY_TYPE_BULLET"] = "Tipo de marcador: ",
        ["INVENTORY_BROKEN_WEAPON"] = "QUEBRADO",
        ["INVENTORY_USE_ITEM"] = "Usar",
        ["INVENTORY_ADD_ITEM"] = "Adicionar",
        ["INVENTORY_REMOVE_ITEM"] = "Remover",
        ["INVENTORY_COMBINE_ITEM"] = "Se combinar esses itens, você obtém: ",
        ["INVENTORY_QUALITY"] = "Durabilidade -",
        ["INVENTORY_SERIAL"] = "Número de série: ",
        ["INVENTORY_ATTACHMENT"] = "Anexos",
        ["INVENTORY_NO_ATTACHMENTS"] = "Esta arma não contém acessórios...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Acessórios não estão disponíveis para esta arma",
        ["INVENTORY_INVALID"] = "O item não existe?",
        ["INVENTORY_DONT_BUY"] = "Você não pode vender este item",
        ["INVENTORY_NO_ITEM"] = "Você não tem este item",
        ["INVENTORY_YOU_BUY"] = "Você comprou com sucesso",
        ["INVENTORY_BUY_SUCCESS"] = "Você comprou com sucesso",
        ["INVENTORY_CRAFTING_ERROR"] = "Você não tem os componentes certos",
        ["INVENTORY_NO_ITEM"] = "Você não tem este item",
        ["INVENTORY_OPENED"] = "Você não pode enviar um item se o outro jogador estiver com o inventário aberto...",
        ["INVENTORY_QUANTITY"] = "Você deve escolher uma quantidade de 1 ou superior",
        ["INVENTORY_GIVE_ERROR"] = "Esta pessoa não pode levar este item",
        ["INVENTORY_GIVE_ITEM"] = "Você enviou: ",
        ["INVENTORY_GIVE_SUCCESS"] = "Você entregou",

        ["VEHICLE_LOCKED"] = "O veículo está trancado",
        ["PLAYER_SEARCH"] = "O jogador não tem as mãos levantadas...",
        ["WENT_WRONG"] = "Algo deu errado",
        ["NO_PLAYERS"] = "Não há jogadores próximos",
        ["PLAYER_NOT_EXIST"] = "O jogador não existe ou está offline",
        ["NO_MONEY"] = "Você não tem dinheiro suficiente",
        ["INVALID_ITEM"] = "Objeto não encontrado",
        ["SEND_ERROR"] = "O artigo não pôde ser entregue",

        ["SET_PREMIUMCOINS"] = "Você entregou moedas premium para ",
        ["ADD_PREMIUMCOINS"] = "Você adicionou moedas premium a ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Você removeu todas as moedas premium de ",
        ["REMOVE_PREMIUMCOINS"] = "Você removeu moedas premium de ",
        ["GET_PREMIUMCOINS"] = "Moedas Premium do Jogador: ",
        ["PREMIUM_QUANTITY"] = ", quantidade: ",
    },

    ['tr'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - İçecek satın alın",
        ["DROP_TEXT"] = "Atılan nesneler",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Stash-",
        ["TRUNK_LABEL"] = "Gövde-",
        ["GLOVEBOX_LABEL"] = "Torpido gözü-",
        ["PLAYER_LABEL"] = "Oyuncu-",
        ["GROUND_LABEL"] = "Zemin-",
        ["GROUND_ANTIDUPE"] = "toprak", --ÖNEMLİ: Bu, ["GARBAGE_LABEL"] olarak adlandırılmalıdır, ancak kısa çizgi veya büyük harf kullanılmamalıdır.
        ["GARBAGE_LABEL"] = "Çöp-",
        ["VENDING_LABEL"] = "Otomat makinesi",

        ["INVENTORY_PLAYER"] = "Oyuncu Envanteri",
        ["INVENTORY_SECOND"] = "Zemin",
        ["INVENTORY_USE"] = "KULLANIM",
        ["INVENTORY_GIVE"] = "VER",
        ["INVENTORY_RIFLE_AMMO"] = "7.62",
        ["INVENTORY_SHOTGUN_AMMO"] = "12 Ayar",
        ["INVENTORY_PISTOL_AMMO"] = "9mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "El bombası",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 mm",
        ["INVENTORY_NONE_AMMO"] = "Mermi kullanmaz",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Çıkış",
        ["INVENTORY_NAME"] = "Ad: ",
        ["INVENTORY_SURNAME"] = "Soyadı: ",
        ["INVENTORY_BIRTHDATE"] = "Doğum tarihi: ",
        ["INVENTORY_GENDER"] = "Cinsiyet: ",
        ["INVENTORY_LICENSE"] = "Lisans: ",
        ["INVENTORY_AMMUNITION"] = "Mühimmat: ",
        ["INVENTORY_ADDITIONS"] = "Eklemeler: ",
        ["INVENTORY_CRIME_SCENE"] = "Suç mahalli: ",
        ["INVENTORY_CALIBER"] = "Kalibre: ",
        ["INVENTORY_DNA_CODE"] = "DNA Kodu: ",
        ["INVENTORY_TYPE_BULLET"] = "İşaret Türü: ",
        ["INVENTORY_BLOOD_TYPE"] = "Kan Türü: ",
        ["INVENTORY_FINGERPRINT"] = "Parmak izi: ",
        ["INVENTORY_TYPE_BULLET"] = "İşaret Türü: ",
        ["INVENTORY_BROKEN_WEAPON"] = "BROKEN",
        ["INVENTORY_USE_ITEM"] = "Kullanım",
        ["INVENTORY_ADD_ITEM"] = "Ekle",
        ["INVENTORY_REMOVE_ITEM"] = "Kaldır",
        ["INVENTORY_COMBINE_ITEM"] = "Bu öğeleri birleştirirseniz şunları elde edersiniz: ",
        ["INVENTORY_QUALITY"] = "Dayanıklılık - ",
        ["INVENTORY_SERIAL"] = "Seri numarası: ",
        ["INVENTORY_ATTACHMENT"] = "Ekler",
        ["INVENTORY_NO_ATTACHMENTS"] = "Bu silah aksesuar içermiyor...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Bu silah için aksesuarlar mevcut değil",
        ["INVENTORY_INVALID"] = "Öğe mevcut değil mi?",
        ["INVENTORY_DONT_BUY"] = "Bu öğeyi satamazsınız",
        ["INVENTORY_NO_ITEM"] = "Bu öğeye sahip değilsiniz",
        ["INVENTORY_YOU_BUY"] = "Başarıyla satın aldınız ",
        ["INVENTORY_BUY_SUCCESS"] = "Başarıyla satın aldınız",
        ["INVENTORY_CRAFTING_ERROR"] = "Doğru bileşenlere sahip değilsiniz",
        ["INVENTORY_NO_ITEM"] = "Bu öğeye sahip değilsiniz",
        ["INVENTORY_OPENED"] = "Diğer oyuncunun envanteri açıksa öğe gönderemezsiniz...",
        ["INVENTORY_QUANTITY"] = "1 veya daha yüksek bir miktar seçmelisiniz",
        ["INVENTORY_GIVE_ERROR"] = "Bu kişi bu öğeyi alamaz",
        ["INVENTORY_GIVE_ITEM"] = "Gönderdiğiniz: ",
        ["INVENTORY_GIVE_SUCCESS"] = "Teslim ettiniz ",

        ["VEHICLE_LOCKED"] = "Araç kilitli",
        ["PLAYER_SEARCH"] = "Oyuncunun ellerini kaldırmıyor...",
        ["WENT_WRONG"] = "Bir şeyler ters gitti",
        ["NO_PLAYERS"] = "Yakınlarda oyuncu yok",
        ["PLAYER_NOT_EXIST"] = "Oyuncu mevcut değil veya çevrimdışı",
        ["NO_MONEY"] = "Yeterli paranız yok",
        ["INVALID_ITEM"] = "Nesne bulunamadı",
        ["SEND_ERROR"] = "Makale teslim edilemedi",

        ["SET_PREMIUMCOINS"] = "Premium coinleri şuraya teslim ettiniz ",
        ["ADD_PREMIUMCOINS"] = "Premium jetonları eklediniz ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Tüm premium paraları şuradan kaldırdınız ",
        ["REMOVE_PREMIUMCOINS"] = "Premium jetonları şuradan kaldırdınız ",
        ["GET_PREMIUMCOINS"] = "Oyuncunun Premium Paraları: ",
        ["PREMIUM_QUANTITY"] = ", miktar: ",
    },

    ['it'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Acquista bevande",
        ["DROP_TEXT"] = "Oggetti scartati",
        ["STASH_TEXT"] = "~b~E~w~-",
        ["SHOP_TEXT"] = "~b~E~w~-",

        ["STASH_LABEL"] = "Stash-",
        ["TRUNK_LABEL"] = "Trunk-",
        ["GLOVEBOX_LABEL"] = "Portaoggetti-",
        ["PLAYER_LABEL"] = "Giocatore-",
        ["GROUND_LABEL"] = "Terra-",
        ["GROUND_ANTIDUPE"] = "ground", --IMPORTANTE: deve essere chiamato come ["GARBAGE_LABEL"] ma senza trattini o lettere maiuscole.
        ["GARBAGE_LABEL"] = "Immondizia-",
        ["VENDING_LABEL"] = "Distributore automatico",

        ["INVENTORY_PLAYER"] = "Inventario giocatore",
        ["INVENTORY_SECOND"] = "Terra",
        ["INVENTORY_USE"] = "USA",
        ["INVENTORY_GIVE"] = "DARE",
        ["INVENTORY_RIFLE_AMMO"] = "7.62",
        ["INVENTORY_SHOTGUN_AMMO"] = "Calibri 12",
        ["INVENTORY_PISTOL_AMMO"] = "9mm",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Granata",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 mm",
        ["INVENTORY_NONE_AMMO"] = "Non utilizza proiettili",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Esci",
        ["INVENTORY_NAME"] = "Nome: ",
        ["INVENTORY_SURNAME"] = "Cognome: ",
        ["INVENTORY_BIRTHDATE"] = "Data di nascita: ",
        ["INVENTORY_GENDER"] = "Sesso: ",
        ["INVENTORY_LICENSE"] = "Licenza: ",
        ["INVENTORY_AMMUNITION"] = "Munizioni: ",
        ["INVENTORY_ADDITIONS"] = "Aggiunte: ",
        ["INVENTORY_CRIME_SCENE"] = "Scena del crimine: ",
        ["INVENTORY_CALIBER"] = "Calibro: ",
        ["INVENTORY_DNA_CODE"] = "Codice DNA: ",
        ["INVENTORY_TYPE_BULLET"] = "Digita punto elenco: ",
        ["INVENTORY_BLOOD_TYPE"] = "Tipo di sangue: ",
        ["INVENTORY_FINGERPRINT"] = "Impronta digitale: ",
        ["INVENTORY_TYPE_BULLET"] = "Digita punto elenco: ",
        ["INVENTORY_BROKEN_WEAPON"] = "ROTTA",
        ["INVENTORY_USE_ITEM"] = "Utilizza",
        ["INVENTORY_ADD_ITEM"] = "Aggiungi",
        ["INVENTORY_REMOVE_ITEM"] = "Rimuovi",
        ["INVENTORY_COMBINE_ITEM"] = "Se combini questi elementi ottieni: ",
        ["INVENTORY_QUALITY"] = "Durata - ",
        ["INVENTORY_SERIAL"] = "Numero di serie: ",
        ["INVENTORY_ATTACHMENT"] = "Allegati",
        ["INVENTORY_NO_ATTACHMENTS"] = "Quest'arma non contiene accessori...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Gli accessori non sono disponibili per quest'arma",
        ["INVENTORY_INVALID"] = "L'articolo non esiste?",
        ["INVENTORY_DONT_BUY"] = "Non puoi vendere questo articolo",
        ["INVENTORY_NO_ITEM"] = "Non hai questo articolo",
        ["INVENTORY_YOU_BUY"] = "Hai acquistato con successo",
        ["INVENTORY_BUY_SUCCESS"] = "Hai acquistato con successo",
        ["INVENTORY_CRAFTING_ERROR"] = "Non hai i componenti giusti",
        ["INVENTORY_NO_ITEM"] = "Non hai questo articolo",
        ["INVENTORY_OPENED"] = "Non puoi inviare un oggetto se l'altro giocatore ha il suo inventario aperto...",
        ["INVENTORY_QUANTITY"] = "Devi scegliere una quantità pari o superiore a 1",
        ["INVENTORY_GIVE_ERROR"] = "Questa persona non può prendere questo oggetto",
        ["INVENTORY_GIVE_ITEM"] = "Hai inviato: ",
        ["INVENTORY_GIVE_SUCCESS"] = "Hai consegnato ",

        ["VEHICLE_LOCKED"] = "Il veicolo è bloccato",
        ["PLAYER_SEARCH"] = "Il giocatore non ha le mani alzate...",
        ["WENT_WRONG"] = "Qualcosa è andato storto",
        ["NO_PLAYERS"] = "Non ci sono giocatori nelle vicinanze",
        ["PLAYER_NOT_EXIST"] = "Il lettore non esiste o è offline",
        ["NO_MONEY"] = "Non hai abbastanza soldi",
        ["INVALID_ITEM"] = "Oggetto non trovato",
        ["SEND_ERROR"] = "Non è stato possibile consegnare l'articolo",

        ["SET_PREMIUMCOINS"] = "Hai consegnato monete premium a ",
        ["ADD_PREMIUMCOINS"] = "Hai aggiunto monete premium a ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Hai rimosso tutte le monete premium da ",
        ["REMOVE_PREMIUMCOINS"] = "Hai rimosso monete premium da ",
        ["GET_PREMIUMCOINS"] = "Monete Premium del giocatore: ",
        ["QUANTITÀ_PREMIUM"] = ", quantità: ",
    },

    ['ru'] = {
        ["VENDING_TEXT"] = "~b~E~w~ - Купить напитки",
        ["DROP_TEXT"] = "Выброшенные объекты",
        ["STASH_TEXT"] = "~b~E~w~ -",
        ["SHOP_TEXT"] = "~b~E~w~ -",

        ["STASH_LABEL"] = "Тайник-",
        ["TRUNK_LABEL"] = "Магистраль-",
        ["GLOVEBOX_LABEL"] = "Перчаточный ящик-",
        ["PLAYER_LABEL"] = "Игрок-",
        ["GROUND_LABEL"] = "Земля-",
        ["GROUND_ANTIDUPE"] = "земля", --ВАЖНО: это должно называться ["GARBAGE_LABEL"], но без дефисов и заглавных букв.
        ["GARBAGE_LABEL"] = "Мусор-",
        ["VENDING_LABEL"] = "Торговый автомат",

        ["INVENTORY_PLAYER"] = "Инвентарь игрока",
        ["INVENTORY_SECOND"] = "Земля",
        ["INVENTORY_USE"] = "ИСПОЛЬЗОВАТЬ",
        ["INVENTORY_GIVE"] = "ДАЙТЕ",
        ["INVENTORY_RIFLE_AMMO"] = "7,62",
        ["INVENTORY_SHOTGUN_AMMO"] = "12 калибр",
        ["INVENTORY_PISTOL_AMMO"] = "9 мм",
        ["INVENTORY_GRENADELAUNCHER_AMMO"] = "Граната",
        ["INVENTORY_SNIPER_AMMO"] = "12,7 мм",
        ["INVENTORY_NONE_AMMO"] = "Пули не используются",
        ["INVENTORY_ATTACHMENTS_EXIT"] = "Выйти",
        ["INVENTORY_NAME"] = "Имя: ",
        ["INVENTORY_SURNAME"] = "Фамилия: ",
        ["INVENTORY_BIRTHDATE"] = "Дата рождения: ",
        ["INVENTORY_GENDER"] = "Пол: ",
        ["INVENTORY_LICENSE"] = "Лицензия: ",
        ["INVENTORY_AMMUNITION"] = "Боеприпасы: ",
        ["INVENTORY_ADDITIONS"] = "Дополнения: ",
        ["INVENTORY_CRIME_SCENE"] = "Место преступления: ",
        ["INVENTORY_CALIBER"] = "Калибр: ",
        ["INVENTORY_DNA_CODE"] = "Код ДНК: ",
        ["INVENTORY_TYPE_BULLET"] = "Тип маркера: ",
        ["INVENTORY_BLOOD_TYPE"] = "Группа крови: ",
        ["INVENTORY_FINGERPRINT"] = "Отпечаток пальца: ",
        ["INVENTORY_TYPE_BULLET"] = "Тип маркера: ",
        ["INVENTORY_BROKEN_WEAPON"] = "СЛОМАН",
        ["INVENTORY_USE_ITEM"] = "Использовать",
        ["INVENTORY_ADD_ITEM"] = "Добавить",
        ["INVENTORY_REMOVE_ITEM"] = "Удалить",
        ["INVENTORY_COMBINE_ITEM"] = "Если вы объедините эти элементы, вы получите: ",
        ["INVENTORY_QUALITY"] = "Долговечность -",
        ["INVENTORY_SERIAL"] = "Серийный номер: ",
        ["INVENTORY_ATTACHMENT"] = "Вложения",
        ["INVENTORY_NO_ATTACHMENTS"] = "Это оружие не содержит аксессуаров...",
        ["INVENTORY_NO_ATT_AVAILABLE"] = "Аксессуары для этого оружия недоступны",
        ["INVENTORY_INVALID"] = "Элемент не существует?",
        ["INVENTORY_DONT_BUY"] = "Вы не можете продать этот предмет",
        ["INVENTORY_NO_ITEM"] = "У вас нет этого предмета",
        ["INVENTORY_YOU_BUY"] = "Вы успешно купили",
        ["INVENTORY_BUY_SUCCESS"] = "Вы успешно купили",
        ["INVENTORY_CRAFTING_ERROR"] = "У вас нет нужных компонентов",
        ["INVENTORY_NO_ITEM"] = "У вас нет этого предмета",
        ["INVENTORY_OPENED"] = "Вы не можете отправить предмет, если у другого игрока открыт инвентарь...",
        ["INVENTORY_QUANTITY"] = "Вы должны выбрать количество 1 или больше",
        ["INVENTORY_GIVE_ERROR"] = "Этот человек не может взять этот предмет",
        ["INVENTORY_GIVE_ITEM"] = "Вы отправили: ",
        ["INVENTORY_GIVE_SUCCESS"] = "Вы доставили",

        ["VEHICLE_LOCKED"] = "Автомобиль заблокирован",
        ["PLAYER_SEARCH"] = "Игрок не поднял руки...",
        ["WENT_WRONG"] = "Что-то пошло не так",
        ["NO_PLAYERS"] = "Рядом нет игроков",
        ["PLAYER_NOT_EXIST"] = "Игрок не существует или не в сети",
        ["NO_MONEY"] = "У вас недостаточно денег",
        ["INVALID_ITEM"] = "Объект не найден",
        ["SEND_ERROR"] = "Не удалось доставить статью",

        ["SET_PREMIUMCOINS"] = "Вы доставили премиальные монеты в ",
        ["ADD_PREMIUMCOINS"] = "Вы добавили премиальные монеты в ",
        ["REMOVE_ALL_PREMIUMCOINS"] = "Вы удалили все премиальные монеты из ",
        ["REMOVE_PREMIUMCOINS"] = "Вы удалили премиальные монеты из ",
        ["GET_PREMIUMCOINS"] = "Премиум-монеты игрока: ",
        ["PREMIUM_QUANTITY"] = ", количество: ",
    },
}