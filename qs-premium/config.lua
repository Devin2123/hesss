--LEAKED AND FIXED BY RDEVELOPER BOSS !!!!
--FUCK YOU QUASAAAAAR RARE5M ON THE TOP !!!!

Config = {}

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
    ["premiumtints"] = {
        [1] = {
            name = "weapontint_1",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 1,
        },
        [2] = {
            name = "weapontint_2",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 2,
        },
        [3] = {
            name = "weapontint_3",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 3,
        },
        [4] = {
            name = "weapontint_4",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 4,
        },
        [5] = {
            name = "weapontint_5",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 5,
        },
        [6] = {
            name = "weapontint_6",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 6,
        },
        [7] = {
            name = "weapontint_7",
            price = 100,
            amount = 99,
            info = {},
            type = "item",
            slot = 7,
        },
        [8] = {
            name = "luxury",
            price = 500,
            amount = 99,
            info = {},
            type = "item",
            slot = 8,
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
    ["premiumshop1"] = {
        ["label"] = "Premium Shops",
        ["type"] = "tosti",
        ["coords"] = {
            [1] = {
                ["x"] = 18.35,
                ["y"] = -1110.02,
                ["z"] = 29.8,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop2"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = 812.58,
                ["y"] = -2153.27,
                ["z"] = 29.62,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop3"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = 844.86,
                ["y"] = -1029.63,
                ["z"] = 28.19,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop4"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = -664.65,
                ["y"] = -939.2,
                ["z"] = 21.83,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop5"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = 249.34,
                ["y"] = -46.29,
                ["z"] = 69.94,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop6"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = 2570.31,
                ["y"] = 298.34,
                ["z"] = 108.73,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop7"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = -1116.95,
                ["y"] = 2693.96,
                ["z"] = 18.55,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop8"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = 1694.92,
                ["y"] = 3755.32,
                ["z"] = 34.71,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
    ["premiumshop9"] = {
        ["label"] = "Premium Shops",
        ["type"] = "premiumtints",
        ["coords"] = {
            [1] = {
                ["x"] = -329.32,
                ["y"] = 6079.24,
                ["z"] = 31.45,
            }
        },
        ["products"] = Config.Products["premiumtints"],
    },
}

--Languages ​​available.
--But you can create your own by modifying one or creating a new one.
Config.Languages = {
    ['en'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Premium Shop",
    },

    ['es'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Tienda Premium",
	},

    ['fr'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Boutique premium",
    },

    ['it'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Negozio Premium",
    },

    ['tr'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Premium Dükkân",
    },

    ['pt'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Loja Premium",
    },

    ['de'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Premium winkel",
    },

    ['ru'] = {
        ["OPEN_PREMIUM_SHOP"] = "~b~E~w~ - Премиум Магазин",
    },
}