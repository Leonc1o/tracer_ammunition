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


local muzzle_animation = {}

---- Muzzle Animation ----
-- Normal bullet
muzzle_animation.normal = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 247, g = 255, b = 51, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 247, g = 255, b = 51, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 247, g = 255, b = 51, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 247, g = 255, b = 51, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 247, g = 255, b = 51, a = 0.5},
      shift = {0, 0}
    }
  }
end
-- Piercing bullet
muzzle_animation.piercing = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 237, g = 191, b = 159, a = 0.5},
      shift = {0, 0}
    }
  }
end
-- Bio bullet
muzzle_animation.bio = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 127, g = 140, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 127, g = 140, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 127, g = 140, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 127, g = 140, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 127, g = 140, b = 0, a = 0.5},
      shift = {0, 0}
    }
  }
end
-- Fire bullet
muzzle_animation.fire = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 255, g = 114, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 255, g = 114, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 255, g = 114, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 255, g = 114, b = 0, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 255, g = 114, b = 0, a = 0.5},
      shift = {0, 0}
    }
  }
end
-- HE bullet
muzzle_animation.he = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 190, g = 100, b = 100, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 190, g = 100, b = 100, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 190, g = 100, b = 100, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 190, g = 100, b = 100, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 190, g = 100, b = 100, a = 0.5},
      shift = {0, 0}
    }
  }
end
-- Uranium bullet
muzzle_animation.uranium = function()
  return
  {
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 2,
      frame_count = 2,
      animation_speed = 1.5,
      tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 4,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 7,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
      shift = {0, 0}
    },
    {
      filename = "__base__/graphics/entity/explosion-gunshot/explosion-gunshot.png",
      draw_as_glow = true,
      priority = "extra-high",
      width = 34,
      height = 38,
      x = 34 * 10,
      frame_count = 3,
      animation_speed = 1.5,
      tint = { r = 127.5, g = 255, b = 127.5, a = 0.5},
      shift = {0, 0}
    }
  }
end

return muzzle_animation

