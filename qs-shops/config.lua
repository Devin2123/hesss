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
    ["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}

Config = {}

--Available languages: en, it, es, fr, pt, de, ru, tr.
--But you can modify them or create your own language below.
Config.Language = "en"

--Key to open the store.
Config.OpenShop = "E"

--Customize as you like the Marker of this resource 
--[https://docs.fivem.net/docs/game-references/markers/]
Config.Marker = { 
    drawDistMarker = 10,
    drawDistText = 3.0, 
    type = 2, 
    scale = {x = 0.2, y = 0.2, z = 0.1}, 
    colour = {r = 71, g = 181, b = 255, a = 120},
    movement = 1 --Use 0 to disable movement
}

--Add all the blips you want or delete them, so you can create hidden stores.
--EXAMPLE: {name="Store", id = 366, scale = 0.6, colour = 26, x = 1039.34, y = 2080.19, z = 20.2},
Config.Blips = {
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = -662.1, y = -935.3, z = 20.8},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = 810.2, y = -2157.3, z = 28.6},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = 1693.4, y = 3759.5, z = 33.7},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = -330.2, y = 6083.8, z = 30.4},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = 252.3, y = -50.0, z = 68.9},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = 22.0, y = -1107.2, z = 28.8},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = 2567.6, y = 294.3, z = 107.7},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = -1117.5, y = 2698.6, z = 17.5},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = 842.4, y = -1033.4, z = 27.1},
    {name="Ammu-Nation", id = 110, scale = 0.8, colour = 26, x = -1306.2, y = -394.0, z = 35.6},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 25.7, y = -1347.3, z = 29.49},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = -3038.71, y = 585.9, z = 7.9},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = -3241.47, y = 1001.14, z = 12.83},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 1728.66, y = 6414.16, z = 35.03},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 1697.99, y = 4924.4, z = 42.06},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 1961.48, y = 3739.96, z = 32.34},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 547.79, y = 2671.79, z = 42.15},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 2679.25, y = 3280.12, z = 55.24},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 2557.94, y = 382.05, z = 108.62},
    {name="24/7 Super Market", id = 59, scale = 0.6, colour = 26, x = 373.55, y = 325.56, z = 103.56},
}


--Add here all the objects of the stores.
--Here I will leave an example for you to guide yourself better.
--
--
--["markets"] = {           <--Select the store name in Config.Locations.
--    [1] = {
--        name = "bread",   <--Here choose the object that you want to have in this store, remember to place it in your SQL items.
--        price = 1,        <--Here you choose the price of this object.
--        amount = 1000,     <--The amount that is in the store, remember that this is reset together with the server restart.
--        info = {},        <--Personalized information for the object, only within the store.
--        type = "item",    <--Do not touch. 
--        slot = 1,         <--Important, you must choose the inventory slot of the store where it is located, for example, you must not put different objects in the same slot.
--    },
--},
Config.Products = {
    ["markets"] = {
        [1] = {
            name = "tosti",
            price = 1,
            amount = 1000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "water_bottle",
            price = 2,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
        }, 
    },
    ["weaponshops"] = {
        [1] = {
            name = "pistol_ammo",
            price = 250,
            amount = 3000,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapon_crowbar",
            price = 1000,
            amount = 1000,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapon_knife",
            price = 7500,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 3,
        },
        [4] = {
            name = "weapon_bat",
            price = 1500,
            amount = 1,
            info = {},
            type = "weapon",
            slot = 4,
        },
        [5] = {
            name = 'pistol_extendedclip',
            price = 750,
            amount = 1000,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = 'pistol_suppressor',
            price = 1500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = 'weapon_pistol',
            price = 1500,
            amount = 1000,
            info = {},
            type = "item",
            slot = 7,
        },
    },
}

--Here you must create the store, I will leave another example for you to guide yourself better.
--
--
--["market"] = {                <--This is the name of the store, choose the one you want, it is not of vital importance.
--    ["label"] = "Market",     <--This is what will be taught in the DrawText, Press E to open Market, for example.
--    ["type"] = "normal",      <--Do not touch. 
--    ["coords"] = {
--        [1] = {
--            ["x"] = 373.9327,     <--Coordinates.
--            ["y"] = 326.6416,     <--Coordinates.
--            ["z"] = 103.56,       <--Coordinates.
--        },
--    },
--    ["products"] = Config.Products["markets"],    <--This is the name of the store, you can vary and place several market2, market3, etc, just remember to add the products above, in Config.Products.
--},
Config.Locations = {
    ["market"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = {
                ["x"] = 373.9327,
                ["y"] = 326.6416,
                ["z"] = 103.56,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["weaponshops"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 21.45885,
                ["y"] = -1106.55,
                ["z"] = 29.797,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop2"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 252.8668,
                ["y"] = -49.3004,
                ["z"] = 69.941,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop3"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -331.46,
                ["y"] = 6083.22,
                ["z"] = 31.45,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop4"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 1692.67,
                ["y"] = 3759.41,
                ["z"] = 34.71,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop5"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -1118.64,
                ["y"] = 2698.23,
                ["z"] = 18.55,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop6"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -3172.8,
                ["y"] = 1086.69,
                ["z"] = 20.84,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop7"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 2568.73,
                ["y"] = 293.96,
                ["z"] = 108.73,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["weaponshop8"] = {
        ["label"] = "Weapon Shop",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -1305.16,
                ["y"] = -393.19,
                ["z"] = 36.7,
            },
        },
        ["products"] = Config.Products["weaponshops"],
    },
    ["market3"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 25.73,
                ["y"] = -1346.8,
                ["z"] = 29.5,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["market4"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -48.21,
                ["y"] = -1757.69,
                ["z"] = 29.42,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["market5"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -1222.49,
                ["y"] = -906.9,
                ["z"] = 12.33,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["market6"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = -707.4,
                ["y"] = -914.33,
                ["z"] = 19.22,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["market7"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 1135.67,
                ["y"] = -982.39,
                ["z"] = 46.42,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["market8"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 1163.57,
                ["y"] = -323.74,
                ["z"] = 69.21,
            },
        },
        ["products"] = Config.Products["markets"],
    },
    ["market9"] = {
        ["label"] = "Market",
        ["type"] = "normal",
        ["coords"] = {
            [1] = { 
                ["x"] = 2556.72,
                ["y"] = 382.11,
                ["z"] = 108.62,
            },
        },
        ["products"] = Config.Products["markets"],
    },
}

--Languages ​​available.
--But you can create your own by modifying one or creating a new one.
Config.Languages = {
    ['en'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Shop",
    },

    ['es'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Tienda",
	},

    ['fr'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Boutique",
    },

    ['it'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Negozio",
    },

    ['tr'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Mağaza",
    },

    ['pt'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Loja",
    },

    ['de'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Laden",
    },

    ['ru'] = {
        ["OPEN_SHOP"] = "~b~E~w~ - Магазин",
    },
}
