-- Copyright (C) 2023  Leoncio

-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <https://www.gnu.org/licenses/>.


local traceRecipe = {}

-- Vanilla -- 
data:extend({
-- Firearm Magazine --
    {
        type = "recipe",
        name = "firearm-magazine",
        energy_required = 1,
        enabled = true,
        ingredients = 
        {
            { "iron-plate", 4 },
        },
        result = "firearm-magazine",
    },
-- Piercing Rounds Magazine --
    {
        type = "recipe",
        name = "piercing-rounds-magazine",
        energy_required = 3,
        enabled = false,
        ingredients = 
        {
            { "firearm-magazine", 1 },
            { "steel-plate", 1 },
            { "copper-plate", 5 },
        },
        result = "piercing-rounds-magazine",
    },
-- Uranium Rounds Magazine --
    {
        type = "recipe",
        name = "uranium-rounds-magazine",
        energy_required = 10,
        enabled = false,
        ingredients = 
        {
            { "piercing-rounds-magazine", 1 },
            { "uranium-238", 1 },
        },
        result = "uranium-rounds-magazine",
    },
-- Shotgun Shell --
    {
        type = "recipe",
        name = "shotgun-shell",
        energy_required = 3,
        enabled = false,
        ingredients = 
        {
            { "copper-plate", 2 },
            { "iron-plate", 2 },
        },
        result = "shotgun-shell",
    },
-- Piercing Shotgun Shell --
    {
        type = "recipe",
        name = "piercing-shotgun-shell",
        energy_required = 8,
        enabled = false,
        ingredients = 
        {
            { "shotgun-shell", 2 },
            { "copper-plate", 5 },
            { "steel-plate", 2 },
        },
        result = "piercing-shotgun-shell",
    },
})
-- NEW --
if settings.startup["trace-ammunition-enableNewAmmo"].value then
data:extend({
-- Bio Rounds Magazine --
    {
        type = "recipe",
        name = "bio-rounds-recipe",
        icon = "__tracer_ammunition__/graphics/icons/bio_magazine.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        ingredients =
        {
            {"piercing-rounds-magazine", 1},
            {"copper-plate", 2},
            {"poison-capsule", 1}
        },
        energy_required = 5,
        result = "bio-rounds-magazine",
    },
-- Incendiary Rounds Magazine --
    {
        type = "recipe",
        name = "fire-rounds-recipe",
        icon = "__tracer_ammunition__/graphics/icons/fire_magazine.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting-with-fluid",
        group = "combat",
        subgroup = "ammo",
        ingredients =
        {
            {"piercing-rounds-magazine", 1},
            {"copper-plate", 2},
            {type="fluid", name="light-oil", amount=20}
        },
        energy_required = 5,
        result = "fire-rounds-magazine",
    },
-- HE Rounds Magazine --
    {
        type = "recipe",
        name = "he-rounds-recipe",
        icon = "__tracer_ammunition__/graphics/icons/he_magazine.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        ingredients =
        {
            {"piercing-rounds-magazine", 1},
            {"copper-plate", 2},
            {"explosives", 2}
        },
        energy_required = 6,
        result = "he-rounds-magazine",
    },
-- Bio Shotgun Shell --
    {
        type = "recipe",
        name = "bio-shotgun-shell-recipe",
        icon = "__tracer_ammunition__/graphics/icons/bio_shotgun_shell.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        ingredients = 
        {
            {"piercing-shotgun-shell", 1},
            {"steel-plate", 1},
            {"poison-capsule", 1}
        },
        energy_required = 10,
        result = "bio-shotgun-shell",
    },
-- Incendiary Shotgun Shell --
    {
        type = "recipe",
        name = "fire-shotgun-shell-recipe",
        icon = "__tracer_ammunition__/graphics/icons/fire_shotgun_shell.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting-with-fluid",
        ingredients = 
        {
            {"piercing-shotgun-shell", 1},
            {"steel-plate", 1},
            {type="fluid", name="light-oil", amount=20}
        },
        energy_required = 10,
        result = "fire-shotgun-shell",
    },
-- HE Shotgun Shell --
    {
        type = "recipe",
        name = "he-shotgun-shell-recipe",
        icon = "__tracer_ammunition__/graphics/icons/he_shotgun_shell.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        ingredients = 
        {
            {"piercing-shotgun-shell", 1},
            {"steel-plate", 2},
            {"explosives", 2}
        },
        energy_required = 11,
        result = "he-shotgun-shell",
    },
-- Uranium Shotgun Shell --
    {
        type = "recipe",
        name = "uranium-shotgun-shell-recipe",
        icon = "__tracer_ammunition__/graphics/icons/uranium_shotgun_shell.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        ingredients =
        {
            {"piercing-shotgun-shell", 1},
            {"uranium-238", 1},
            {"steel-plate", 1}
        },
        energy_required = 15,
        result = "uranium-shotgun-shell",
    },
})
end

return traceRecipe


-- NEW --
-- data:extend({
--     -- Bio Rounds Magazine --
--         {
--             type = "recipe",
--             name = "bio-rounds-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/bio_magazine.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting",
--             group = "combat",
--             subgroup = "ammo",
--             ingredients =
--             {
--                 {"piercing-rounds-magazine", 1},
--                 {"copper-plate", 2},
--                 {"poison-capsule", 1}
--             },
--             energy_required = 5,
--             result = "bio-rounds-magazine",
--         },
--     -- Incediary Rounds Magazine --
--         {
--             type = "recipe",
--             name = "fire-rounds-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/fire_magazine.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting-with-fluid",
--             group = "combat",
--             subgroup = "ammo",
--             ingredients =
--             {
--                 {"piercing-rounds-magazine", 1},
--                 {"copper-plate", 2},
--                 {type="fluid", name="light-oil", amount=20}
--               },
--             energy_required = 5,
--             result = "fire-rounds-magazine",
--         },
--     -- HE Rounds Magazine --
--         {
--             type = "recipe",
--             name = "he-rounds-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/he_magazine.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting",
--             group = "combat",
--             subgroup = "ammo",
--             ingredients =
--             {
--                 {"piercing-rounds-magazine", 1},
--                 {"copper-plate", 2},
--                 {"explosives", 2}
--             },
--             energy_required = 6,
--             result = "he-rounds-magazine",
--         },
--     -- Bio Shotgun Shell --
--         {
--             type = "recipe",
--             name = "bio-shotgun-shell-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/bio_shotgun_shell.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting",
--             ingredients = 
--             {
--                 {"piercing-shotgun-shell", 1},
--                 {"steel-plate", 1},
--                 {"poison-capsule", 1}
--             },
--             energy_required = 10,
--             result = "bio-shotgun-shell",
--         },
--     -- Incediary Shotgun Shell --
--         {
--             type = "recipe",
--             name = "fire-shotgun-shell-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/fire_shotgun_shell.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting-with-fluid",
--             ingredients = 
--             {
--                 {"piercing-shotgun-shell", 1},
--                 {"steel-plate", 1},
--                 {type="fluid", name="light-oil", amount=20}
--             },
--             energy_required = 10,
--             result = "fire-shotgun-shell",
--         },
--     -- HE Shotgun Shell --
--         {
--             type = "recipe",
--             name = "he-shotgun-shell-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/he_shotgun_shell.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting",
--             ingredients = 
--             {
--                 {"piercing-shotgun-shell", 1},
--                 {"steel-plate", 2},
--                 {"explosives", 2}
--             },
--             energy_required = 11,
--             result = "he-shotgun-shell",
--         },
--     -- Uranium Shotgun Shell --
--         {
--             type = "recipe",
--             name = "uranium-shotgun-shell-recipe",
--             icon = "__tracer_ammunition__/graphics/icons/uranium_shotgun_shell.png",
--             icon_mimaps = 4,
--             icon_size = 64,
--             enabled = false,
--             category = "crafting",
--             ingredients =
--             {
--                 {"piercing-shotgun-shell", 1},
--                 {"uranium-238", 1},
--                 {"steel-plate", 1}
--             },
--             energy_required = 15,
--             result = "uranium-shotgun-shell",
--         },
--     })