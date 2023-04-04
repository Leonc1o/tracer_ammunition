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


-- This is the bullet animation script

local bullet_animation = {}

-- Normal bullet
bullet_animation.normal = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 247, g = 255, b = 51, a = 0 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        --draw_as_light = true,
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 3,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 247, g = 255, b = 51, a = 0 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 6,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 247, g = 255, b = 51, a = 0 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 9,
        frame_count = 2,
        animation_speed = 1.5,
        tint = { r = 247, g = 255, b = 51, a = 0 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 11,
        frame_count = 1,
        animation_speed = 1.5,
        tint = { r = 247, g = 255, b = 51, a = 1 },
        shift = { 0, 0 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_glow = true,
        scale = 0.8,
      }
    }
  end

-- Normal bullet Shadow
bullet_animation.normal_shadow = function()
      return
      {
        {
          filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 3,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 6,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 9,
          frame_count = 2,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/normal_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 11,
          frame_count = 1,
          animation_speed = 1.5,
          shift = { 0, 0 }, --unchanged
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.8,
        }
      }
  end

-- Piercing bullet
bullet_animation.piercing = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
      priority = "extra-high",
      width = 15,
      height = 50,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5 },
      shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      scale = 0.5,
    },
    {
      filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
      priority = "extra-high",
      width = 15,
      height = 50,
      x = 15 * 3,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5 },
      shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      scale = 0.5,
    },
    {
      filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
      priority = "extra-high",
      width = 15,
      height = 50,
      x = 15 * 6,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5 },
      shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      scale = 0.5,
    },
    {
      filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
      priority = "extra-high",
      width = 15,
      height = 50,
      x = 15 * 9,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5 },
      shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      scale = 0.5,
    },
    {
      filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
      priority = "extra-high",
      width = 15,
      height = 50,
      x = 15 * 11,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 1 },
      shift = { 0, 0 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 0.8,
    }
  }
  end

-- Piercing bullet Shadow
bullet_animation.piercing_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        frame_count = 3,
        animation_speed = 1.5,
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 3,
        frame_count = 3,
        animation_speed = 1.5,
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 6,
        frame_count = 3,
        animation_speed = 1.5,
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 9,
        frame_count = 2,
        animation_speed = 1.5,
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/piercing_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 11,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 0.8,
      }
    }
  end

-- Bio bullet
bullet_animation.bio = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 127, g = 140, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 3,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 127, g = 140, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 6,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 127, g = 140, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 9,
        frame_count = 2,
        animation_speed = 1.5,
        tint = { r = 127, g = 140, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 11,
        frame_count = 1,
        animation_speed = 1.5,
        tint = { r = 127, g = 140, b = 0, a = 1 },
        shift = { 0, 0 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_glow = true,
        scale = 0.8,
      }
    }
  end

-- Bio bullet Shadow
bullet_animation.bio_shadow = function()
      return
      {
        {
          filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 3,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 6,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 9,
          frame_count = 2,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/bio_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 11,
          frame_count = 1,
          animation_speed = 1.5,
          shift = { 0, 0 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.8,
        }
      }
  end

-- Fire bullet
bullet_animation.fire = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 255, g = 114, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 3,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 255, g = 114, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 6,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 255, g = 114, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 9,
        frame_count = 2,
        animation_speed = 1.5,
        tint = { r = 255, g = 114, b = 0, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 11,
        frame_count = 1,
        animation_speed = 1.5,
        tint = { r = 255, g = 114, b = 0, a = 1 },
        shift = { 0, 0 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_glow = true,
        scale = 0.8,
      }
    }
  end

-- Fire bullet Shadow
bullet_animation.fire_shadow = function()
      return
      {
        {
          filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 3,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 6,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 9,
          frame_count = 2,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/fire_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 11,
          frame_count = 1,
          animation_speed = 1.5,
          shift = { 0, 0 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.8,
        }
      }
  end

-- HE bullet
bullet_animation.he = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 190, g = 100, b = 100, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 3,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 190, g = 100, b = 100, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 6,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 190, g = 100, b = 100, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 9,
        frame_count = 2,
        animation_speed = 1.5,
        tint = { r = 190, g = 100, b = 100, a = 0.5 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 11,
        frame_count = 1,
        animation_speed = 1.5,
        tint = { r = 190, g = 100, b = 100, a = 1 },
        shift = { 0, 0 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_glow = true,
        scale = 0.8,
      }
    }
  end

-- HE bullet Shadow
bullet_animation.he_shadow = function()
      return
      {
        {
          filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 3,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 6,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 9,
          frame_count = 2,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/he_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 11,
          frame_count = 1,
          animation_speed = 1.5,
          shift = { 0, 0 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.8,
        }
      }
  end

-- Uranium bullet
bullet_animation.uranium = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 127.5, g = 255, b = 127.5, a = 0.1 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 3,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 127.5, g = 255, b = 127.5, a = 0.1 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 6,
        frame_count = 3,
        animation_speed = 1.5,
        tint = { r = 127.5, g = 255, b = 127.5, a = 0.1 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 9,
        frame_count = 2,
        animation_speed = 1.5,
        tint = { r = 127.5, g = 255, b = 127.5, a = 0.1 },
        shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        scale = 0.5,
      },
      {
        filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
        priority = "extra-high",
        width = 15,
        height = 50,
        x = 15 * 11,
        frame_count = 1,
        animation_speed = 1.5,
        tint = { r = 127.5, g = 255, b = 127.5, a = 1 },
        shift = { 0, 0 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_glow = true,
        scale = 0.8,
      }
    }
  end

-- Uranium bullet Shadow
bullet_animation.uranium_shadow = function()
      return
      {
        {
          filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 3,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 6,
          frame_count = 3,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 9,
          frame_count = 2,
          animation_speed = 1.5,
          shift = { 0, -0.2 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.5,
        },
        {
          filename = "__tracer_ammunition__/graphics/entities/uranium_bullet_trace.png",
          priority = "extra-high",
          width = 15,
          height = 50,
          x = 15 * 11,
          frame_count = 1,
          animation_speed = 1.5,
          shift = { 0, 0 },
          hit_at_collision_position = true,
          force_condition = "not-same",
          draw_as_shadow = true,
          scale = 0.8,
        }
      }
  end

-- Normal Shotgun shell
bullet_animation.normal_shotgun = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/normal_bullet.png",
      priority = "extra-high", -- "high"
      width = 3,
      height = 5,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 247, g = 255, b = 51, a = 1 },
      shift = { 0, 0 }, --shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 1,
    },
  }
end

-- Normal Shotgun shell Shadow
bullet_animation.normal_shotgun_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/normal_bullet.png",
        priority = "extra-high", -- "high"
        width = 3,
        height = 5,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 }, --shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 1,
      },
    }
end

-- Piercing Shotgun shell
bullet_animation.piercing_shotgun = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/piercing_bullet.png",
      priority = "extra-high", -- "high"
      width = 3,
      height = 5,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 1 },
      shift = { 0, 0 }, --shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 1,
    },
  }
end

-- Piercing Shotgun shell Shadow
bullet_animation.piercing_shotgun_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/piercing_bullet.png",
        priority = "extra-high", -- "high"
        width = 3,
        height = 5,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 }, --shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 1,
      },
    }
end

-- Bio Shotgun shell
bullet_animation.bio_shotgun = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/bio_bullet.png",
      priority = "extra-high", -- "high"
      width = 3,
      height = 5,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 127, g = 140, b = 0, a = 1 },
      shift = { 0, 0 }, --shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 1,
    },
  }
end

-- Bio Shotgun shell Shadow
bullet_animation.bio_shotgun_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/bio_bullet.png",
        priority = "extra-high", -- "high"
        width = 3,
        height = 5,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 }, --shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 1,
      },
    }
end

-- Fire Shotgun shell
bullet_animation.fire_shotgun = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/fire_bullet.png",
      priority = "extra-high", -- "high"
      width = 3,
      height = 5,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 255, g = 114, b = 0, a = 1 },
      shift = { 0, 0 }, --shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 1,
    },
  }
end

-- Fire Shotgun shell Shadow
bullet_animation.fire_shotgun_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/fire_bullet.png",
        priority = "extra-high", -- "high"
        width = 3,
        height = 5,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 }, --shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 1,
      },
    }
end

-- HE Shotgun shell
bullet_animation.he_shotgun = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/he_bullet.png",
      priority = "extra-high", -- "high"
      width = 3,
      height = 5,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 190, g = 100, b = 100, a = 1 },
      shift = { 0, 0 }, --shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 1.5,
    },
  }
end

-- HE Shotgun shell Shadow
bullet_animation.he_shotgun_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/he_bullet.png",
        priority = "extra-high", -- "high"
        width = 3,
        height = 5,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 }, --shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 1.5
      },
    }
end

-- Uranium Shotgun shell
bullet_animation.uranium_shotgun = function()
  return
  {
    {
      filename = "__tracer_ammunition__/graphics/entities/uranium_bullet.png",
      priority = "extra-high", -- "high"
      width = 3,
      height = 5,
      frame_count = 1,
      animation_speed = 1.5,
      tint = { r = 127.5, g = 255, b = 127.5, a = 1 },
      shift = { 0, 0 }, --shift = { 0, -0.2 },
      hit_at_collision_position = true,
      force_condition = "not-same",
      draw_as_glow = true,
      scale = 1,
    },
  }
end

-- Uranium Shotgun shell Shadow
bullet_animation.uranium_shotgun_shadow = function()
    return
    {
      {
        filename = "__tracer_ammunition__/graphics/entities/uranium_bullet.png",
        priority = "extra-high", -- "high"
        width = 3,
        height = 5,
        frame_count = 1,
        animation_speed = 1.5,
        shift = { 0, 0 }, --shift = { 0, -0.2 },
        hit_at_collision_position = true,
        force_condition = "not-same",
        draw_as_shadow = true,
        scale = 1,
      },
    }
end

return bullet_animation