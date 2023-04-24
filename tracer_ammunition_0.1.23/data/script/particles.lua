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


local sounds = require("__base__/prototypes/entity/sounds")

local ta_particle_animations = {}

-- Bullets --
ta_particle_animations.get_stone_particle_tiny_pictures_bullet = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-tiny.png",
            priority = "extra-high",
            width = 6,
            height = 6,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5,
        }
    }
end

ta_particle_animations.get_stone_particle_small_pictures_bullet = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-small.png",
            priority = "extra-high",
            width = 10,
            height = 12,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 2,
        }
    }
end

ta_particle_animations.get_stone_particle_medium_pictures_bullet = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-medium.png",
            priority = "extra-high",
            width = 18,
            height = 20,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 2,
        }
    }
end

if settings.startup["trace-ammunition-enableNewAmmo"].value then
-- HE Bullet --
ta_particle_animations.get_stone_particle_tiny_pictures_bullet_he = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-tiny.png",
            priority = "extra-high",
            width = 6,
            height = 6,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5,
        }
    }
end

ta_particle_animations.get_stone_particle_small_pictures_bullet_he = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-small.png",
            priority = "extra-high",
            width = 10,
            height = 12,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5
        }
    }
end

ta_particle_animations.get_stone_particle_medium_pictures_bullet_he = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-medium.png",
            priority = "extra-high",
            width = 18,
            height = 20,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5
        }
    }
end
end

-- Uranium Bullet --
ta_particle_animations.get_stone_particle_tiny_pictures_bullet_uranium = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-tiny.png",
            priority = "extra-high",
            width = 6,
            height = 6,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5,
            draw_as_glow = true,
        }
    }
end

ta_particle_animations.get_stone_particle_small_pictures_bullet_uranium = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-small.png",
            priority = "extra-high",
            width = 10,
            height = 12,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 2,
            draw_as_glow = true,
        }
    }
end

ta_particle_animations.get_stone_particle_medium_pictures_bullet_uranium = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-medium.png",
            priority = "extra-high",
            width = 18,
            height = 20,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 2,
            draw_as_glow = true,
        }
    }
end

-- Shells --
ta_particle_animations.get_stone_particle_tiny_pictures_shell = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-tiny.png",
            priority = "extra-high",
            width = 6,
            height = 6,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5,
        }
    }
end

ta_particle_animations.get_stone_particle_small_pictures_shell = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-small.png",
            priority = "extra-high",
            width = 10,
            height = 12,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 3, --0.5 / 2,
        }
    }
end

ta_particle_animations.get_stone_particle_medium_pictures_shell = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-medium.png",
            priority = "extra-high",
            width = 18,
            height = 20,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 3, --0.5 / 2,
        }
    }
end

if settings.startup["trace-ammunition-enableNewAmmo"].value then
-- HE Shell --
ta_particle_animations.get_stone_particle_tiny_pictures_shell_he = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-tiny.png",
            priority = "extra-high",
            width = 6,
            height = 6,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5,
        }
    }
end

ta_particle_animations.get_stone_particle_small_pictures_shell_he = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-small.png",
            priority = "extra-high",
            width = 10,
            height = 12,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.75
        }
    }
end

ta_particle_animations.get_stone_particle_medium_pictures_shell_he = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-medium.png",
            priority = "extra-high",
            width = 18,
            height = 20,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.75
        }
    }
end

-- Uranium Shell --
ta_particle_animations.get_stone_particle_tiny_pictures_shell_uranium = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-tiny.png",
            priority = "extra-high",
            width = 6,
            height = 6,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5,
            draw_as_glow = true,
        }
    }
end

ta_particle_animations.get_stone_particle_small_pictures_shell_uranium = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-small.png",
            priority = "extra-high",
            width = 10,
            height = 12,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 3, --0.5 / 2,
            draw_as_glow = true,
        }
    }
end

ta_particle_animations.get_stone_particle_medium_pictures_shell_uranium = function(options)
    local options = options or {}
    return
    {
        sheet =
        {
            filename = "__base__/graphics/particle/stone-particle/hr-stone-particle-medium.png",
            priority = "extra-high",
            width = 18,
            height = 20,
            frame_count = 12,
            animation_speed = 0.5,
            variation_count = 10,
            tint = options.tint,
            shift = util.add_shift(util.by_pixel(2.25,0.25), options.shift),
            scale = 0.5 / 3, --0.5 / 2,
            draw_as_glow = true,
        }
    }
end
end


-- local small_smoke_trigger_effect = function()
-- return
-- {
--     type = "create-trivial-smoke",
--     smoke_name = "smoke-explosion-particle-small",
--     starting_frame_deviation = 0,
--     starting_frame_speed_deviation = 0,
--     offset_deviation = {{-0.03, -0.03}, {0.03, 0.03}},
--     speed_from_center = nil,
--     scale = 0.25,
-- }
-- end

local default_ended_in_water_trigger_effect = function()
return
{

    {
    type = "create-particle",
    probability = 1,
    affects_target = false,
    show_in_tooltip = false,
    particle_name = "deep-water-particle",
    offset_deviation = { { -0.05, -0.05 }, { 0.05, 0.05 } },
    tile_collision_mask = nil,
    initial_height = 0,
    initial_height_deviation = 0.02,
    initial_vertical_speed = 0.05,
    initial_vertical_speed_deviation = 0.05,
    speed_from_center = 0.01,
    speed_from_center_deviation = 0.006,
    frame_speed = 1,
    frame_speed_deviation = 0,
    tail_length = 2,
    tail_length_deviation = 1,
    tail_width = 3
    },
    {
    type = "create-particle",
    repeat_count = 10,
    repeat_count_deviation = 6,
    probability = 0.03,
    affects_target = false,
    show_in_tooltip = false,
    particle_name = "water-particle",
    offsets =
    {
        { 0, 0 },
        { 0.01563, -0.09375 },
        { 0.0625, 0.09375 },
        { -0.1094, 0.0625 }
    },
    offset_deviation = { { -0.2969, -0.1992 }, { 0.2969, 0.1992 } },
    tile_collision_mask = nil,
    initial_height = 0,
    initial_height_deviation = 0.02,
    initial_vertical_speed = 0.053,
    initial_vertical_speed_deviation = 0.005,
    speed_from_center = 0.02,
    speed_from_center_deviation = 0.006,
    frame_speed = 1,
    frame_speed_deviation = 0,
    tail_length = 9,
    tail_length_deviation = 0,
    tail_width = 1
    },
    {
    type = "play-sound",
    sound = sounds.small_splash
    }
}

end

local make_particle = function(params)

if not params then error("No params given to make_particle function") end
local name = params.name or error("No name given")

local ended_in_water_trigger_effect = params.ended_in_water_trigger_effect or default_ended_in_water_trigger_effect()
if params.ended_in_water_trigger_effect == false then
    ended_in_water_trigger_effect = nil
end

local particle =
{

    type = "optimized-particle",
    name = name,

    life_time = params.life_time or 60 * 15,
    fade_away_duration = params.fade_away_duration,

    render_layer = params.render_layer or "projectile",
    render_layer_when_on_ground = params.render_layer_when_on_ground or "corpse",

    regular_trigger_effect_frequency = params.regular_trigger_effect_frequency or 2,
    regular_trigger_effect = params.regular_trigger_effect,
    ended_in_water_trigger_effect = ended_in_water_trigger_effect,

    pictures = params.pictures,
    shadows = params.shadows,
    draw_shadow_when_on_ground = params.draw_shadow_when_on_ground,

    movement_modifier_when_on_ground = params.movement_modifier_when_on_ground,
    movement_modifier = params.movement_modifier,
    vertical_acceleration = params.vertical_acceleration,

    mining_particle_frame_speed = params.mining_particle_frame_speed,

}
return particle
end

function shadowtint()
return {r = 0, g = 0, b = 0}
end

-- Vanilla --
local particles_vanilla =
{
    -- Normal Bullet --
    make_particle
    {
        name = "ta-normal-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({tint = { r = 0.706, g = 0.606, b = 0.509, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-normal-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_bullet({tint = { r = 0.706, g = 0.606, b = 0.509, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-normal-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_bullet({tint = { r = 0.706, g = 0.606, b = 0.509, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Piercing Bullet --
    make_particle
    {
        name = "ta-pierce-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({tint = { r = 200, g = 125, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-pierce-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_bullet({tint = { r = 200, g = 125, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-pierce-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_bullet({tint = { r = 200, g = 125, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Uranium Bullet --
    make_particle
    {
        name = "ta-uranium-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_bullet_uranium({tint = { r = 127.5, g = 255, b = 127.5, a = 0.5 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_bullet_uranium({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10,
    },
    make_particle
    {
        name = "ta-uranium-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_bullet_uranium({tint = { r = 127.5, g = 255, b = 127.5, a = 0.5 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_bullet_uranium({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-uranium-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_bullet_uranium({tint = { r = 127.5, g = 255, b = 127.5, a = 0.5 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_bullet_uranium({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Normal Shotgun --
    make_particle
    {
        name = "ta-normal-shell-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_shell({tint = { r = 0.706, g = 0.606, b = 0.509, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-normal-shell-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_shell({tint = { r = 0.706, g = 0.606, b = 0.509, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-normal-shell-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_shell({tint = { r = 0.706, g = 0.606, b = 0.509, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Piercing Shotgun --
    make_particle
    {
        name = "ta-pierce-shell-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_shell({tint = { r = 200, g = 125, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-pierce-shell-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_shell({tint = { r = 200, g = 125, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-pierce-shell-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_shell({tint = { r = 200, g = 125, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
}
data:extend(particles_vanilla)

-- New --
if settings.startup["trace-ammunition-enableNewAmmo"].value then
local particles_new =
{
    -- Bio Bullet --
    make_particle
    {
        name = "ta-bio-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({tint = { r = 127, g = 140, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-bio-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_bullet({tint = { r = 127, g = 140, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-bio-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_bullet({tint = { r = 127, g = 140, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Incediary Bullet --
    make_particle
    {
        name = "ta-fire-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({tint = { r = 255, g = 114, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-fire-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_bullet({tint = { r = 255, g = 114, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-fire-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_bullet({tint = { r = 255, g = 114, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_bullet({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- HE Bullet --
    make_particle
    {
        name = "ta-he-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_bullet_he({tint = { r = 190, g = 100, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_bullet_he({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-he-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_bullet_he({tint = { r = 190, g = 100, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_bullet_he({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-he-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_bullet_he({tint = { r = 190, g = 100, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_bullet_he({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Bio Shell --
    make_particle
    {
        name = "ta-bio-shell-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_shell({tint = { r = 127, g = 140, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-bio-shell-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_shell({tint = { r = 127, g = 140, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-bio-shell-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_shell({tint = { r = 127, g = 140, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Incediary Shell --
    make_particle
    {
        name = "ta-fire-shell-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_shell({tint = { r = 255, g = 114, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-fire-shell-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_shell({tint = { r = 255, g = 114, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-fire-shell-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_shell({tint = { r = 255, g = 114, b = 0, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_shell({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- HE Shell --
    make_particle
    {
        name = "ta-he-shell-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_shell_he({tint = { r = 190, g = 100, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_shell_he({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-he-shell-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_shell_he({tint = { r = 190, g = 100, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_shell_he({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-he-shell-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_shell_he({tint = { r = 190, g = 100, b = 100, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_shell_he({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    -- Uranium Shell --
    make_particle
    {
        name = "ta-uranium-shell-explosion-stone-particle-tiny",
        pictures = ta_particle_animations.get_stone_particle_tiny_pictures_shell_uranium({tint = { r = 127.5, g = 255, b = 127.5, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_tiny_pictures_shell_uranium({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil,
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-uranium-shell-explosion-stone-particle-small",
        pictures = ta_particle_animations.get_stone_particle_small_pictures_shell_uranium({tint = { r = 127.5, g = 255, b = 127.5, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_small_pictures_shell_uranium({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
    make_particle
    {
        name = "ta-uranium-shell-explosion-stone-particle-medium",
        pictures = ta_particle_animations.get_stone_particle_medium_pictures_shell_uranium({tint = { r = 127.5, g = 255, b = 127.5, a = 1.000 }}),
        shadows = ta_particle_animations.get_stone_particle_medium_pictures_shell_uranium({ tint = shadowtint(), shift = util.by_pixel (1,0)}),
        regular_trigger_effect = nil, --small_smoke_trigger_effect(),
        ended_in_water_trigger_effect = default_ended_in_water_trigger_effect(),
        life_time = 60 *10
    },
}
data:extend(particles_new)
end

return ta_particle_animations