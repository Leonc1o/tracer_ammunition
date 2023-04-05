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

local flamethrowerAmmo = {}

-- Flamethrower Ammo --
data:extend({
  {
      type = "ammo",
      name = "flamethrower-ammo",
      icon = "__base__/graphics/icons/flamethrower-ammo.png",
      icon_size = 64, icon_mipmaps = 4,
      subgroup = "ammo",
      order = "e[flamethrower]",
      stack_size = 100,
      magazine_size = 100,
      ammo_type =
      {
        {
          source_type = "default",
          category = "flamethrower",
          target_type = "direction",
          clamp_position = true,
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "stream",
              stream = "handheld-flamethrower-fire-stream-new",
              direction_deviation = 1,
              range_deviation = 1,
            }
          }
        },
        {
          source_type = "vehicle",
          consumption_modifier = 1.125,
          category = "flamethrower",
          target_type = "direction",
          clamp_position = true,
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "stream",
              stream = "tank-flamethrower-fire-stream",
              direction_deviation = 1,
              range_deviation = 1,
            }
          }
        }
      },
    },
})
-- Stream Sprites --
local stream_sprites =
{
  spine_animation =
  {
      filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-fire-stream-spine.png",
      blend_mode = "additive",
      line_length = 4,
      width = 32,
      height = 18,
      frame_count = 32,
      axially_symmetrical = false,
      direction_count = 1,
      animation_speed = 2,
      shift = {0, 0},
      draw_as_glow = true,
      scale = 0.75,
  },

  shadow =
  {
      filename = "__base__/graphics/entity/acid-projectile/projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395},
      scale = 0.75,
  },

  particle =
  {
      filename = "__base__/graphics/entity/flamethrower-fire-stream/flamethrower-explosion.png",
      priority = "extra-high",
      width = 64,
      height = 64,
      frame_count = 32,
      line_length = 8,
      draw_as_glow = true,
      scale = 0.75,
  }
}
-- Fire Stream --
data:extend({
{
  type = "stream",
  name = "handheld-flamethrower-fire-stream-new",
  flags = {"not-on-map"},
  stream_light = {intensity = 0.5, size = 3 * 0.8},
  ground_light = {intensity = 0.8, size = 3 * 0.8},
  spine_animation = stream_sprites.spine_animation,
  shadow = stream_sprites.shadow,
  particle = stream_sprites.particle,
  particle_buffer_size = 65,
  particle_spawn_interval = 2,
  particle_spawn_timeout = 2,
  particle_vertical_acceleration = 0.005 * 0.6,
  particle_horizontal_speed = 0.25,
  particle_horizontal_speed_deviation = 0.0035,
  particle_start_alpha = 0.5,
  particle_end_alpha = 1,
  particle_start_scale = 0.2,
  particle_loop_frame_count = 3,
  particle_fade_out_threshold = 0.9,
  particle_loop_exit_threshold = 0.25,
  smoke_sources =
  {
    {
      name = "soft-fire-smoke",
      frequency = 0.05, --0.25,
      position = {0.0, 0}, -- -0.8},
      starting_frame_deviation = 60
    }
  },
  action =
  {
    {
      type = "area",
      radius = 2.5,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-sticker",
            sticker = "flamethrower-fire-sticker", -- old: "fire-sticker"
            show_in_tooltip = true
          },
          {
            type = "damage",
            damage = { amount = 2, type = "fire" },
            apply_damage_to_trees = false
          }
        }
      }
    },
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-fire",
            entity_name = "fire-flame",
            show_in_tooltip = true,
            initial_ground_flame_count = 2
          }
        }
      }
    }
  },
-- Tank --
},
{
  type = "stream",
  name = "tank-flamethrower-fire-stream",
  flags = {"not-on-map"},
  stream_light = {intensity = 1, size = 5 * 0.8},
  ground_light = {intensity = 0.8, size = 5 * 0.8},
  spine_animation = stream_sprites.spine_animation,
  shadow = stream_sprites.shadow,
  particle = stream_sprites.particle,
  particle_buffer_size = 65,
  particle_spawn_interval = 2,
  particle_spawn_timeout = 2,
  particle_vertical_acceleration = 0.005 * 0.3,
  particle_horizontal_speed = 0.45,
  particle_horizontal_speed_deviation = 0.0035,
  particle_start_alpha = 0.5,
  particle_end_alpha = 1,
  particle_start_scale = 0.5,
  particle_loop_frame_count = 3,
  particle_fade_out_threshold = 0.9,
  particle_loop_exit_threshold = 0.25,
  smoke_sources =
  {
    {
      name = "soft-fire-smoke",
      frequency = 0.05, --0.25,
      position = {0.0, 0}, -- -0.8},
      starting_frame_deviation = 60
    }
  },
  action =
  {
    {
      type = "area",
      radius = 4,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = { amount = 7, type = "fire" },
            apply_damage_to_trees = true
          }
        }
      }
    }
  },
}
})

return flamethrowerAmmo