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


-- Advanced Ammunition

data:extend({

    {
        type = "technology",
        name = "advanced-ammo",
        icon = "__tracer_ammunition__/graphics/icons/advanced_ammo.png",
        icon_size = "256",
        icon_mipmaps = 4,
        prerequisites = { "military-3" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "bio-rounds-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "fire-rounds-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "bio-shotgun-shell-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "fire-shotgun-shell-recipe"
            },
        },
        unit =
        {
            count = 200,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "military-science-pack", 1 }
            },
            time = 45
        }
    }

})

-- Explosive Ammunition

data:extend({

    {
        type = "technology",
        name = "explosive-ammo",
        icon = "__tracer_ammunition__/graphics/icons/explosive_ammo.png",
        icon_size = "256",
        icon_mipmaps = 4,
        prerequisites = { "advanced-ammo", "rocketry", "military-4" },
        effects =
        {
            {
                type = "unlock-recipe",
                recipe = "he-rounds-recipe"
            },
            {
                type = "unlock-recipe",
                recipe = "he-shotgun-shell-recipe"
            },
        },
        unit =
        {
            count = 500,
            ingredients =
            {
                { "automation-science-pack", 1 },
                { "logistic-science-pack", 1 },
                { "chemical-science-pack", 1 },
                { "military-science-pack", 1 },
                { "utility-science-pack", 1 }
            },
            time = 60
        }
    }

})
