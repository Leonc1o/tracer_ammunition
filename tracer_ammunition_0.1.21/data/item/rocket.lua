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


-- Rocket Ammo --
data:extend({
    {
        type = "ammo",
        name = "rocket",
        icon = "__base__/graphics/icons/rocket.png",
        icon_size = 64, icon_mipmaps = 4,
        ammo_type =
        {
          category = "rocket",
          target_type = "direction", --new
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "rocket",
              starting_speed = 0.1,
              source_effects =
              {
                type = "create-entity",
                entity_name = "explosion-hit"
              }
            }
          }
        },
        subgroup = "ammo",
        order = "d[rocket-launcher]-a[basic]",
        stack_size = 200
    },
-- Rocket entity --
    {
        type = "projectile",
        name = "rocket",
        flags = {"not-on-map"},
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = 0.005,
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = {intensity = 0.5, size = 4},
        turn_speed = 0.003,
        turning_speed_increases_exponentially_with_projectile_speed = true,
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
                entity_name = "explosion"
              },
              {
                type = "damage",
                damage = {amount = 200, type = "explosion"}
              },
              {
                type = "create-entity",
                entity_name = "small-scorchmark-tintable",
                check_buildability = true
              },
              {
                type = "invoke-tile-trigger",
                repeat_count = 1
              },
              {
                type = "destroy-decoratives",
                from_render_layer = "decorative",
                to_render_layer = "object",
                include_soft_decoratives = true,
                include_decals = false,
                invoke_decorative_trigger = true,
                decoratives_with_trigger_only = false,
                radius = 1.5
              }
            }
          }
        },
        animation =
        {
          filename = "__base__/graphics/entity/rocket/rocket.png",
          draw_as_glow = true,
          frame_count = 8,
          line_length = 8,
          width = 9,
          height = 35,
          shift = {0, 0},
          priority = "high"
        },
        shadow =
        {
          filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
          frame_count = 1,
          width = 7,
          height = 24,
          priority = "high",
          shift = {0, 0}
        },
        smoke =
        {
          {
            name = "smoke-fast",
            deviation = {0.15, 0.15},
            frequency = 1,
            position = {0, 1},
            slow_down_factor = 1,
            starting_frame = 3,
            starting_frame_deviation = 5,
            starting_frame_speed = 0,
            starting_frame_speed_deviation = 5
          }
        }
    },
})

-- Explopsive Rocket Ammo --
data:extend({
    {
      type = "ammo",
      name = "explosive-rocket",
      icon = "__base__/graphics/icons/explosive-rocket.png",
      icon_size = 64, icon_mipmaps = 4,
      ammo_type =
      {
        category = "rocket",
        target_type = "direction", --new
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "explosive-rocket",
            starting_speed = 0.1,
            source_effects =
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            }
          }
        }
      },
      subgroup = "ammo",
      order = "d[rocket-launcher]-b[explosive]",
      stack_size = 200
    },
-- Explosive Rocket entity --
    {
      type = "projectile",
      name = "explosive-rocket",
      flags = {"not-on-map"},
      collision_box = { { -0.5, -1 }, { 0.5, 1 } },
      acceleration = 0.005,
      hit_at_collision_position = true,
      force_condition = "not-same",
      light = {intensity = 0.5, size = 4},
      turn_speed = 0.003,
      turning_speed_increases_exponentially_with_projectile_speed = true,
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
              entity_name = "big-explosion"
            },
            {
              type = "damage",
              damage = {amount = 50, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "medium-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 3.5
            },
            {
              type = "nested-result",
              action =
              {
                type = "area",
                radius = 6.5,
                action_delivery =
                {
                  type = "instant",
                  target_effects =
                  {
                    {
                      type = "damage",
                      damage = {amount = 100, type = "explosion"}
                    },
                    {
                      type = "create-entity",
                      entity_name = "explosion"
                    }
                  }
                }
              }
            }
          }
        }
      },
      animation =
      {
        filename = "__base__/graphics/entity/rocket/rocket.png",
        draw_as_glow = true,
        frame_count = 8,
        line_length = 8,
        width = 9,
        height = 35,
        shift = {0, 0},
        priority = "high"
      },
      shadow =
      {
        filename = "__base__/graphics/entity/rocket/rocket-shadow.png",
        frame_count = 1,
        width = 7,
        height = 24,
        priority = "high",
        shift = {0, 0}
      },
      smoke =
      {
        {
          name = "smoke-fast",
          deviation = {0.15, 0.15},
          frequency = 1,
          position = {0, 1},
          slow_down_factor = 1,
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
})