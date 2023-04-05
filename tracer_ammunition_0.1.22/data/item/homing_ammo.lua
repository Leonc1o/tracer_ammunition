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


local traceHomingAmmo = {}

if settings.startup["trace-ammunition-enableHomingAmmo"].value then
-- Homing Ammo --
data:extend({
    {
        type = "ammo",
        name = "homing-magazine",
        icon = "__tracer_ammunition__/graphics/icons/homing_magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/homing_magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 1,
            target_type = "entity", -- makes it homing
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "ta-projectile-bullet-homing",
                    starting_speed = 0.1, -- 0.1 = slow bullet start
                    direction_deviation = 0.15,
                    range_deviation = 0.15,
                    max_range = 60,
                    source_effects =
                    {
                        {
                            type = "create-explosion",
                            entity_name = "explosion-gunshot-normal",
                        }
                    }
                }
            }
        },
        subgroup = "ammo",
        order = "ag",
        stack_size = 200,
        magazine_size = 10,
    },
})
-- Homing Projectile --
data:extend({
    {
        type = "projectile",
        name = "ta-projectile-bullet-homing",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = 0.001,--0.005,-- -0.015, -- making the bullets accelerate as the same rate as rockets, for now
        turn_speed = 0.5,--0.003, -- THis is new, taken from rocket projectiles ( when they are homing )
        animation =                      
        {
            filename = "__tracer_ammunition__/graphics/entities/he_bullet.png",
            frame_count = 1,
            width = 3,
            height = 10,
            priority = "high",
            draw_as_glow = true,
            scale = 1,
            --tint = { r = 20, g = 20, b = 20, a = 1 },--tint = { r = 85, g = 45, b = 15, a = 1 },
        },
        shadow =
        {
            filename = "__tracer_ammunition__/graphics/entities/he_bullet.png",
            frame_count = 1,
            width = 3,
            height = 10, 
            priority = "high",
            draw_as_shadow = true,
            scale = 1,
        },
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.5, size = 4, color = { r = 85, g = 45, b = 15, a = 1 } },
        action =
        {
            type = "direct",
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "create-entity",
                        entity_name = "explosion-he-bullet",
                        tile_collision_mask = { "water-tile" },
                    },
                    {
                        type = "create-entity",
                        entity_name = "water-splash",
                        tile_collision_mask = { "ground-tile" }
                    },
                    {
                        type = "damage",
                        damage = { amount = 25, type = "physical" },
                    },
                    {
                        type = "push-back",
                        distance = 0.25,
                        show_in_tooltip = false,
                    },
                    {
                        type = "destroy-decoratives",
                        from_render_layer = "decorative",
                        to_render_layer = "object",
                        include_soft_decoratives = true,
                        include_decals = false,
                        invoke_decorative_trigger = true,
                        decoratives_with_trigger_only = false,
                        radius = 0.5
                    },
                }
            }
        },
        {
            type = "area",
            radius = 1,
            action_delivery =
            {
                type = "instant",
                target_effects =
                {
                    {
                        type = "damage",
                        damage = { amount = 15, type = "explosion", }
                    },
                },
            },
        },
    },
})
-- Homing Recipe --
data:extend({
    {
        type = "recipe",
        name = "homing-magazine-recipe",
        icon = "__tracer_ammunition__/graphics/icons/homing_magazine.png",
        icon_mimaps = 4,
        icon_size = 64,
        enabled = false,
        category = "crafting",
        group = "combat",
        subgroup = "ammo",
        ingredients =
        {
            {"piercing-rounds-magazine", 2},
            {"copper-plate", 4},
            {"explosives", 1}
        },
        energy_required = 6,
        result = "homing-magazine",
    },
})
-- Homing Technology --
data:extend({
        {
            type = "technology",
            name = "homing-ammo",
            icon = "__tracer_ammunition__/graphics/icons/homing_ammo.png",
            icon_size = "256",
            icon_mipmaps = 4,
            prerequisites = { "advanced-ammo", "rocketry", "military-4" },
            effects =
            {
                {
                    type = "unlock-recipe",
                    recipe = "homing-magazine-recipe",
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
end

return traceHomingAmmo