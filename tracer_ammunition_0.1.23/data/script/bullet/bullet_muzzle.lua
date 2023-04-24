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


local traceMuzzleAnimation = {}

local muzzle_animation = require("__tracer_ammunition__/data/script/bullet/muzzle_animation")

data:extend({
  -- Normal bullet
  {
    type = "explosion",
    name = "explosion-gunshot-normal",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = muzzle_animation.normal(),
    rotate = true,
    light = { intensity = 0.6, size = 5, color = { r = 247, g = 255, b = 51 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  -- Piercing bullet
  {
    type = "explosion",
    name = "explosion-gunshot-p",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = muzzle_animation.piercing(),
    rotate = true,
    light = { intensity = 0.9, size = 6, color = { r = 237, g = 191, b = 159 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  -- Bio bullet
  {
    type = "explosion",
    name = "explosion-gunshot-bio",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = muzzle_animation.bio(),
    rotate = true,
    light = { intensity = 0.6, size = 6, color = { r = 127, g = 140, b = 0 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  -- Fire bullet
  {
    type = "explosion",
    name = "explosion-gunshot-fire",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = muzzle_animation.fire(),
    rotate = true,
    light = { intensity = 0.9, size = 6, color = { r = 255, g = 114, b = 0 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  -- HE bullet
  {
    type = "explosion",
    name = "explosion-gunshot-he",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = muzzle_animation.he(),
    rotate = true,
    light = { intensity = 0.9, size = 8, color = { r = 190, g = 100, b = 100 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
  -- Uranium bullet
  {
    type = "explosion",
    name = "explosion-gunshot-u",
    flags = {"not-on-map", "hidden"},
    subgroup = "explosions",
    animations = muzzle_animation.uranium(),
    rotate = true,
    light = { intensity = 0.9, size = 9, color = { r = 0.5, g = 1, b = 0.5 } },
    smoke = "smoke-fast",
    smoke_count = 1,
    smoke_slow_down_factor = 1
  },
})

return traceMuzzleAnimation
