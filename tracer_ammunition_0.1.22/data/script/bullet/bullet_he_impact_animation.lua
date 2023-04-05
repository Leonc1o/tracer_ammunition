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


local bullet_he_impact_animation = {}

-- Explosion Impact ( Explosions for HE bullets and HE shells) --

-- HE Bullet Impact Explosion --
bullet_he_impact_animation.explosion_he = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion/explosion-1.png",
      draw_as_glow = true,
      priority = "extra-high", -- old "high"
      line_length = 6,
      width = 26,
      height = 22,
      frame_count = 17,
      animation_speed = 0.5,
      shift = {0, 0},
      scale = 0.5,

    },
    {
      filename = "__base__/graphics/entity/explosion/explosion-3.png",
      draw_as_glow = true,
      priority = "extra-high",
      line_length = 6,
      width = 52,
      height = 46,
      frame_count = 17,
      animation_speed = 0.5,
      shift = {0, 0},
      scale = 0.5,
    },
  }
end

-- HE Bullet Impact Schorchmark --
-- bullet_he_impact_animation.schorchmark_he = function()
--   return
--   {
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png", -- small-scorchmark-tintable.png --small-scorchmark.png
--       priority = "low",
--       width = 128,
--       height = 92,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.5,
--     },
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
--       priority = "low",
--       width = 128,
--       height = 92,
--       x = 128 * 1,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.5,
--     },
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
--       priority = "low",
--       width = 128,
--       height = 92,
--       x = 128 * 2,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.5,
--     },
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
--       priority = "low",
--       width = 128,
--       height = 92,
--       x = 128 * 3,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.5,
--     },
--   }
-- end

-- HE Shell Impact Explosion --
bullet_he_impact_animation.explosion_he_shotgun = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion/explosion-1.png",
      draw_as_glow = true,
      priority = "extra-high", -- old "high"
      line_length = 6,
      width = 26,
      height = 22,
      frame_count = 17,
      animation_speed = 0.5,
      shift = {0, 0},
      scale = 0.7,

    },
    {
      filename = "__base__/graphics/entity/explosion/explosion-3.png",
      draw_as_glow = true,
      priority = "extra-high",
      line_length = 6,
      width = 52,
      height = 46,
      frame_count = 17,
      animation_speed = 0.5,
      shift = {0, 0},
      scale = 0.7,
    },
  }
end

-- HE Shell Impact Schorchmark --
-- bullet_he_impact_animation.schorchmark_he_shotgun = function()
--   return
--   {
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png", -- small-scorchmark-tintable.png --small-scorchmark.png
--       priority = "low",
--       width = 128,
--       height = 92,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.7,
--     },
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
--       priority = "low",
--       width = 128,
--       height = 92,
--       x = 128 * 1,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.7,
--     },
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
--       priority = "low",
--       width = 128,
--       height = 92,
--       x = 128 * 2,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.7,
--     },
--     {
--       filename = "__base__/graphics/entity/scorchmark/small-scorchmark.png",
--       priority = "low",
--       width = 128,
--       height = 92,
--       x = 128 * 3,
--       frame_count = 1,
--       animation_speed = 0.000001,
--       shift = { 0, 0 },
--       hit_at_collision_position = true,
--       force_condition = "not-same",
--       scale = 0.7,
--     },
--   }
-- end

return bullet_he_impact_animation