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


local traceImpact = {}

local bullet_he_impact_animation = require("__tracer_ammunition__/data/script/bullet/bullet_he_impact_animation")
sound = require ("__base__.prototypes.entity.sounds")

-- Vanilla --
data:extend({
-- Firearm Rounds Magazine --
    {
      type = "explosion",
      name = "explosion-hit-f",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = 
      {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 247, g = 255, b = 51, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.7, size = 5, color = { r = 247, g = 255, b = 51 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 9,
              particle_name = "ta-normal-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 6,
              particle_name = "ta-normal-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-normal-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
-- Piercing Rounds Magazine --
    {
      type = "explosion",
      name = "explosion-hit-p",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = 
      {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 200, g = 125, b = 100, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.8, size = 6, color = { r = 200, g = 125, b = 100 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 9,
              particle_name = "ta-pierce-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 6,
              particle_name = "ta-pierce-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-pierce-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
-- Uranium Magazine Light --
    {
    type = "explosion",
    name = "explosion-hit-u",
    flags = { "not-on-map" },
    subgroup = "explosions",
    animations = 
    {
      {
        filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        frame_count = 13,
        animation_speed = 1.5,
        tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
        shift = { 0, 1 },
      },
    },
    light = { intensity = 1, size = 9, color = { r = 127.5, g = 255, b = 127.5 } },
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 0.75,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 9,
            particle_name = "ta-uranium-explosion-stone-particle-tiny",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 6,
            particle_name = "ta-uranium-explosion-stone-particle-small",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "ta-uranium-explosion-stone-particle-medium",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.125,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.0375,
            initial_vertical_speed = 0.02,
            initial_vertical_speed_deviation = 0.0375,
          },
        }
      }
    }
    },
-- Uranium Magazine Scorchmark --
    {
    type = "corpse",
    name = "explosion-hit-u-scorchmark",
    icon = "__base__/graphics/icons/small-scorchmark.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map", "placeable-off-grid"},
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    collision_mask = {"doodad-layer", "not-colliding-with-itself"},
    selection_box = {{-1, -1}, {1, 1}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 5, -- 5 minutes
    final_render_layer = "ground-patch-higher2",
    subgroup = "scorchmarks", --new
    order="a-b-a", --new
    remove_on_entity_placement = false, --new
    remove_on_tile_placement = true, --new
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    ground_patch =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable.png",
        width = 128,
        height = 92,
        line_length = 4,
        shift = util.by_pixel(0, 2),
        variation_count = 4,
        scale = 0.15,
        draw_as_glow = true,
        blend_mode = "additive-soft",
        tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        hr_version =
        {
          filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable.png",
          width = 256,
          height = 182,
          line_length = 4,
          shift = util.by_pixel(0, 2),
          variation_count = 4,
          scale = 0.15,
          draw_as_glow = true,
          blend_mode = "additive-soft",
          tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        }
      }
    },
    ground_patch_high =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable-top.png",
        width = 34,
        height = 28,
        line_length = 4,
        variation_count = 4,
        scale = 0.15,
        draw_as_glow = true,
        blend_mode = "additive-soft",
        tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        hr_version =
        {
          filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable-top.png",
          width = 68,
          height = 54,
          line_length = 4,
          shift = util.by_pixel(0, 2),
          variation_count = 4,
          scale = 0.15,
          draw_as_glow = true,
          blend_mode = "additive-soft",
          tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        }
      }
    },
    },
-- Shotgun Shell --
    {
      type = "explosion",
      name = "explosion-hit-s",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 247, g = 255, b = 51, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.4, size = 1, color = { r = 247, g = 255, b = 51 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 5,
              particle_name = "ta-normal-shell-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-normal-shell-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 2,
              particle_name = "ta-normal-shell-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
-- Piercing Shotgun Shell --
    {
      type = "explosion",
      name = "explosion-hit-p-s",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 200, g = 125, b = 100, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.5, size = 2, color = { r = 200, g = 125, b = 100 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 5,
              particle_name = "ta-pierce-shell-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-pierce-shell-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 2,
              particle_name = "ta-pierce-shell-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
})
-- NEW --
if settings.startup["trace-ammunition-enableNewAmmo"].value then
data:extend({
-- Bio Rounds Magazine --
    {
    type = "explosion",
    name = "explosion-hit-b",
    flags = { "not-on-map" },
    subgroup = "explosions",
    animations = {
      {
        filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        frame_count = 13,
        animation_speed = 1.5,
        tint = { r = 127, g = 140, b = 0, a = 0.5},
        shift = { 0, 0.5 },
      },
    },
    light = { intensity = 0.9, size = 7, color = { r = 127, g = 140, b = 0 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 9,
            particle_name = "ta-bio-explosion-stone-particle-tiny",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 6,
            particle_name = "ta-bio-explosion-stone-particle-small",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "ta-bio-explosion-stone-particle-medium",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.125,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.0375,
            initial_vertical_speed = 0.02,
            initial_vertical_speed_deviation = 0.0375,
          },
        }
      }
    }
    },
-- Incediary Rounds Magazine --
    {
    type = "explosion",
    name = "explosion-hit-fire",
    flags = { "not-on-map" },
    subgroup = "explosions",
    animations = 
    {
      {
        filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
        priority = "extra-high",
        width = 34,
        height = 38,
        frame_count = 13,
        animation_speed = 1.5,
        tint = { r = 255, g = 114, b = 0, a = 0.5},
        shift = { 0, 0.5 },
      },
    },
    light = { intensity = 0.9, size = 7, color = { r = 255, g = 114, b = 0 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 9,
            particle_name = "ta-fire-explosion-stone-particle-tiny",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 6,
            particle_name = "ta-fire-explosion-stone-particle-small",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "ta-fire-explosion-stone-particle-medium",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.125,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.0375,
            initial_vertical_speed = 0.02,
            initial_vertical_speed_deviation = 0.0375,
          },
        }
      }
    }
    },
-- HE Rounds Magazine --
    {
  type = "explosion",
  name = "explosion-he-bullet",
  icon_size = 64,
  flags = {"not-on-map", "hidden"},
  subgroup = "explosions",
  animations = bullet_he_impact_animation.explosion_he(),
  light = { intensity = 0.9, size = 8, color = { r = 190, g = 100, b = 100 } },
  smoke = "smoke-fast",
  smoke_count = 1,
  smoke_slow_down_factor = 1,
  sound = sound.small_explosion(0.5), -- old: 0.5
  created_effect =
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-particle",
          repeat_count = 9,
          particle_name = "ta-he-explosion-stone-particle-tiny",
          offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
          initial_height = 0.25,
          initial_height_deviation = 0.125,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.0125,
          speed_from_center = 0.0125,
          speed_from_center_deviation = 0.0125,
        },
        {
          type = "create-particle",
          repeat_count = 6,
          particle_name = "ta-he-explosion-stone-particle-small",
          offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
          initial_height = 0.25,
          initial_height_deviation = 0.125,
          initial_vertical_speed = 0.025,
          initial_vertical_speed_deviation = 0.0125,
          speed_from_center = 0.0125,
          speed_from_center_deviation = 0.0125,
        },
        {
          type = "create-particle",
          repeat_count = 3,
          particle_name = "ta-he-explosion-stone-particle-medium",
          offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
          initial_height = 0.125,
          speed_from_center = 0.02,
          speed_from_center_deviation = 0.0375,
          initial_vertical_speed = 0.02,
          initial_vertical_speed_deviation = 0.0375,
        },
      }
    }
  }
    },
-- HE Rounds Scorchmark --
    {
  type = "corpse",
  name = "explosion-he-scorchmark",
  icon = "__base__/graphics/icons/small-scorchmark.png",
  icon_size = 64, icon_mipmaps = 4,
  flags = {"placeable-neutral", "not-on-map", "placeable-off-grid"},
  collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
  collision_mask = {"doodad-layer", "not-colliding-with-itself"},
  selection_box = {{-1, -1}, {1, 1}},
  selectable_in_game = false,
  time_before_removed = 60 * 60 * 10, -- 10 minutes
  final_render_layer = "ground-patch-higher2",
  subgroup = "scorchmarks",
  order="a-b-a",
  remove_on_entity_placement = false,
  remove_on_tile_placement = true,
  use_tile_color_for_ground_patch_tint = true,
  ground_patch =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable.png",
      width = 128,
      height = 92,
      line_length = 4,
      shift = util.by_pixel(0, 2),
      apply_runtime_tint = true,
      variation_count = 4,
      scale = 0.5,
      hr_version =
      {
        filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable.png",
        width = 256,
        height = 182,
        line_length = 4,
        shift = util.by_pixel(0, 2),
        apply_runtime_tint = true,
        variation_count = 4,
        scale = 0.25
      }
    }
  },
  ground_patch_higher =
  {
    sheet =
    {
      filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable-top.png",
      width = 34,
      height = 28,
      line_length = 4,
      variation_count = 4,
      shift = util.by_pixel(0, -2),
      apply_runtime_tint = true,
      scale = 0.5,
      hr_version =
      {
        filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable-top.png",
        width = 68,
        height = 54,
        line_length = 4,
        shift = util.by_pixel(0, -2),
        variation_count = 4,
        apply_runtime_tint = true,
        scale = 0.25
      }
    }
  }
    },
-- Bio Shotgun Shell --
    {
      type = "explosion",
      name = "explosion-hit-b-s",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 127, g = 140, b = 0, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.6, size = 3, color = { r = 127, g = 140, b = 0 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 5,
              particle_name = "ta-bio-shell-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-bio-shell-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 2,
              particle_name = "ta-bio-shell-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
-- Incediary Shotgun Shell --
    {
      type = "explosion",
      name = "explosion-hit-fire-s",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 255, g = 114, b = 0, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.6, size = 3, color = { r = 255, g = 114, b = 0 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 5,
              particle_name = "ta-fire-shell-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-fire-shell-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 2,
              particle_name = "ta-fire-shell-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
-- HE Shotgun Shell --
    {
    type = "explosion",--"explosion",
    name = "explosion-he-shell",
    icon_size = 64,
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = bullet_he_impact_animation.explosion_he_shotgun(),
    light = { intensity = 0.9, size = 8, color = { r = 190, g = 100, b = 100 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    sound = sound.small_explosion(0.3), -- old: 0.5
    created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 10,
            particle_name = "ta-he-shell-explosion-stone-particle-tiny",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 6,
            particle_name = "ta-he-shell-explosion-stone-particle-small",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.25,
            initial_height_deviation = 0.125,
            initial_vertical_speed = 0.025,
            initial_vertical_speed_deviation = 0.0125,
            speed_from_center = 0.0125,
            speed_from_center_deviation = 0.0125,
          },
          {
            type = "create-particle",
            repeat_count = 4,
            particle_name = "ta-he-shell-explosion-stone-particle-medium",
            offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
            initial_height = 0.125,
            speed_from_center = 0.02,
            speed_from_center_deviation = 0.0375,
            initial_vertical_speed = 0.02,
            initial_vertical_speed_deviation = 0.0375,
          },
        }
      }
    }
    },
-- HE Shotgun Shell Scorchmark --
    {
    type = "corpse",
    name = "explosion-he-scorchmark-shell",
    icon = "__base__/graphics/icons/small-scorchmark.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map", "placeable-off-grid"},
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    collision_mask = {"doodad-layer", "not-colliding-with-itself"},
    selection_box = {{-1, -1}, {1, 1}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 10, -- 10 minutes
    final_render_layer = "ground-patch-higher2",
    subgroup = "scorchmarks",
    order="a-b-a",
    remove_on_entity_placement = false,
    remove_on_tile_placement = true,
    use_tile_color_for_ground_patch_tint = true,
    ground_patch =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable.png",
        width = 128,
        height = 92,
        line_length = 4,
        shift = util.by_pixel(0, 2),
        apply_runtime_tint = true,
        variation_count = 4,
        scale = 0.7,
        hr_version =
        {
          filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable.png",
          width = 256,
          height = 182,
          line_length = 4,
          shift = util.by_pixel(0, 2),
          apply_runtime_tint = true,
          variation_count = 4,
          scale = 0.35,
        }
      }
    },
    ground_patch_higher =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable-top.png",
        width = 34,
        height = 28,
        line_length = 4,
        variation_count = 4,
        shift = util.by_pixel(0, -2),
        apply_runtime_tint = true,
        scale = 0.7,
        hr_version =
        {
          filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable-top.png",
          width = 68,
          height = 54,
          line_length = 4,
          shift = util.by_pixel(0, -2),
          variation_count = 4,
          apply_runtime_tint = true,
          scale = 0.35,--0.5
        }
      }
    }
    },
-- Uranium Shotgun Shell Light --
    {
      type = "explosion",
      name = "explosion-hit-u-s",
      flags = { "not-on-map" },
      subgroup = "explosions",
      animations = {
        {
          filename = "__base__/graphics/entity/explosion-hit/explosion-hit.png",
          priority = "extra-high",
          width = 34,
          height = 38,
          frame_count = 13,
          animation_speed = 1.5,
          tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
          shift = { 0, 0.5 },
        },
      },
      light = { intensity = 0.7, size = 5, color = { r = 127.5, g = 255, b = 127.5 } },
      smoke = "smoke-fast",
      smoke_count = 1,
      smoke_slow_down_factor = 1,
      created_effect =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-particle",
              repeat_count = 5,
              particle_name = "ta-uranium-shell-explosion-stone-particle-tiny",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 3,
              particle_name = "ta-uranium-shell-explosion-stone-particle-small",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.25,
              initial_height_deviation = 0.125,
              initial_vertical_speed = 0.025,
              initial_vertical_speed_deviation = 0.0125,
              speed_from_center = 0.0125,
              speed_from_center_deviation = 0.0125,
            },
            {
              type = "create-particle",
              repeat_count = 2,
              particle_name = "ta-uranium-shell-explosion-stone-particle-medium",
              offset_deviation = { { -0.8984, -0.5 }, { 0.8984, 0.5 } },
              initial_height = 0.125,
              speed_from_center = 0.02,
              speed_from_center_deviation = 0.0375,
              initial_vertical_speed = 0.02,
              initial_vertical_speed_deviation = 0.0375,
            },
          }
        }
      }
    },
-- Uranium Shotgun Shell Scorchmark --
    {
    type = "corpse",
    name = "explosion-hit-u-s-scorchmark",
    icon = "__base__/graphics/icons/small-scorchmark.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-neutral", "not-on-map", "placeable-off-grid"},
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    collision_mask = {"doodad-layer", "not-colliding-with-itself"},
    selection_box = {{-1, -1}, {1, 1}},
    selectable_in_game = false,
    time_before_removed = 60 * 60 * 5, -- 5 minutes
    final_render_layer = "ground-patch-higher2",
    subgroup = "scorchmarks", --new
    order="a-b-a", --new
    remove_on_entity_placement = false, --new
    remove_on_tile_placement = true, --new
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1,
    ground_patch =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable.png",
        width = 128,
        height = 92,
        line_length = 4,
        shift = util.by_pixel(0, 2),
        variation_count = 4,
        scale = 0.075,
        draw_as_glow = true,
        blend_mode = "additive-soft",
        tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        hr_version =
        {
          filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable.png",
          width = 256,
          height = 182,
          line_length = 4,
          shift = util.by_pixel(0, 2),
          variation_count = 4,
          scale = 0.075,
          draw_as_glow = true,
          blend_mode = "additive-soft",
          tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        }
      }
    },
    ground_patch_high =
    {
      sheet =
      {
        filename = "__base__/graphics/entity/scorchmark/small-scorchmark-tintable-top.png",
        width = 34,
        height = 28,
        line_length = 4,
        variation_count = 4,
        scale = 0.075,
        draw_as_glow = true,
        blend_mode = "additive-soft",
        tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        hr_version =
        {
          filename = "__base__/graphics/entity/scorchmark/hr-small-scorchmark-tintable-top.png",
          width = 68,
          height = 54,
          line_length = 4,
          shift = util.by_pixel(0, 2),
          variation_count = 4,
          scale = 0.075,
          draw_as_glow = true,
          blend_mode = "additive-soft",
          tint = {  r = 0.30, g = 0.8, b = 0.30, a = 0.1 },
        }
      }
    },
    },
})
end

return traceImpact