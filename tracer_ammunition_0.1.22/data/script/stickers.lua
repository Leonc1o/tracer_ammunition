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


local traceSticker = {}

local math3d = require "math3d"

-- Stickers --
data:extend({
-- Fire Bullet --
    {
        type = "sticker",
        name = "fire-bullet-sticker",
        flags = { "not-on-map" },
        animation =
        {
            filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
            line_length = 8,
            width = 60,
            height = 118,
            frame_count = 25,
            blend_mode = "normal",
            animation_speed = 1,
            scale = 0.2,
            tint = { r = 255, g = 114, b = 0, a = 46 },
            shift = math3d.vector2.mul({ -0.078125, -1.8125 }, 0.1),
            draw_as_glow = true,
        },
        duration_in_ticks = 5 * 60,
        damage_interval = 10,
        target_movement_modifier = 0.8,
        damage_per_tick = { amount = 10 * 4 / 60, type = "fire" },
        spread_fire_entity = "fire-flame-on-tree",
        fire_spread_cooldown = 30,
        fire_spread_radius = 0.75
    },
-- Bio Bullet --
    {
        type = "sticker",
        name = "bio-bullet-sticker",
        flags = { "not-on-map" },
        animation =
        {
            filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
            line_length = 5,
            width = 16,
            height = 18,
            frame_count = 50,
            blend_mode = "normal",
            animation_speed = 1,
            scale = 0.5,
            tint = { r = 255, g = 0, b = 0, a = 1 },
            shift = math3d.vector2.mul({ -0.078125, -1.8125 }, 0.1),
            draw_as_glow = true,
        },
        duration_in_ticks = 80,
        damage_interval = 10,
        target_movement_modifier = 0.5,
        damage_per_tick = { amount = 5, type = "poison" },
    },
-- Flamethrower Fire --
    {
        type = "sticker",
        name = "flamethrower-fire-sticker",
        flags = {"not-on-map"},
        duration_in_ticks = 30 * 60,
        damage_interval = 10,
        target_movement_modifier = 0.4,
        damage_per_tick = { amount = 10 * 100 / 60, type = "fire" },
        spread_fire_entity = "fire-flame-on-tree",
        fire_spread_cooldown = 30,
        fire_spread_radius = 0.75,
        animation =
        {
            filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
            line_length = 8,
            width = 60,
            height = 118,
            frame_count = 25,
            blend_mode = "normal",
            animation_speed = 1,
            scale = 0.2,
            tint = { r = 0.5, g = 0.5, b = 0.5, a = 0.18 }, --{ r = 1, g = 1, b = 1, a = 0.35 },
            shift = math3d.vector2.mul({-0.078125, -1.8125}, 0.1),
            draw_as_glow = true
        },

    }
})

return traceSticker