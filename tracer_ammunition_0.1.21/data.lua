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


-- item --
require("data/item/ammo");
require("data/item/flamethrower.lua")
require("data/item/rocket.lua")

-- recipe --

require("data/recipe/recipe_ammo");

-- script --
require("data/script/bullet/bullet_animation");
require("data/script/bullet/bullet_muzzle");
require("data/script/bullet/bullet_impact");
require("data/script/bullet/bullet_he_impact_animation");
require("data/script/bullet/muzzle_animation");
require("data/script/stickers")
require("data/script/technology")

-- vanilla_changes --
require("data/vanilla_changes/technology")
require("data/vanilla_changes/guns")