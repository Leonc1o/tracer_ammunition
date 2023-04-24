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


local traceProjectile = {}

local bullet_animation = require("__tracer_ammunition__/data/script/bullet/bullet_animation") -- takes information from bullet_animation.lua

-- VANILLA --
data:extend({
-- Normal Bullet Projectile --
    {
        type = "projectile",
        name = "ta-projectile-bullet-normal",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.normal(),
        shadow = bullet_animation.normal_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.5, size = 4, color = { r = 247, g = 255, b = 51 } },
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
                        entity_name = "explosion-hit-f",
                        tile_collision_mask = { "water-tile" },
                    },
                    {
                        type = "create-entity",
                        entity_name = "water-splash",
                        tile_collision_mask = { "ground-tile" },
                    },
                    {
                        type = "damage",
                        damage = { amount = 5, type = "physical" },
                    },
                }
            }
        }
    },
-- Piercing Bullet Projectile --
    {
        type = "projectile",
        name = "ta-projectile-bullet-piercing",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 8,
        animation = bullet_animation.piercing(),
        shadow = bullet_animation.piercing_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.5, size = 4, color = { r = 237, g = 191, b = 159 } },
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
                        entity_name = "explosion-hit-p",
                        tile_collision_mask = { "water-tile" }, --new
                    },
                    {
                        type = "create-entity", -- new
                        entity_name = "water-splash", --new normal
                        tile_collision_mask = { "ground-tile" } --new
                    },
                    {
                        type = "damage",
                        damage = { amount = 8, type = "physical" },
                    }
                }
            }
        }
    },
-- Uranium Bullet Projectile --
    {
        type = "projectile",
        name = "ta-projectile-bullet-uranium",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.005,
        piercing_damage = 12,
        animation = bullet_animation.uranium(),
        shadow = bullet_animation.uranium_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.8, size = 7, color = { r = 127.5, g = 255, b = 127.5 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-u", --new
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-u-scorchmark", --new
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "damage", --new
                            damage = { amount = 10, type = "physical" }, --new
                        },
                        {
                            type = "damage", --new
                            damage = { amount = 14, type = "radioactive" }, --new
                        },
                        {
                            type = "create-entity", --new
                            entity_name = "ta-uranium-damage", --new
                            tile_collision_mask = { "water-tile" }, --new
                        },
                    }
                }
            }
        }
    },
-- Normal Shell Projectile --
    {
        type = "projectile",
        name = "ta-projectile-shell-normal",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.normal_shotgun(),
        shadow = bullet_animation.normal_shotgun_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.2, size = 1, color = { r = 247, g = 255, b = 51 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-s",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "damage",
                            damage = { amount = 5, type = "physical" },
                        },
                    }
                }
            }
        }
    },
-- Piercing Shell Projectile --
    {
        type = "projectile",
        name = "ta-projectile-shell-piercing",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 8,
        animation = bullet_animation.piercing_shotgun(),
        shadow = bullet_animation.piercing_shotgun_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.2, size = 2, color = { r = 237, g = 191, b = 159 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-p-s",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "damage",
                            damage = { amount = 8, type = "physical" },
                        },
                    }
                }
            }
        }
    }
})
-- NEW --
if settings.startup["trace-ammunition-enableNewAmmo"].value then
data:extend({
-- Bio Bullet Projectile --
    {
        type = "projectile",
        name = "ta-projectile-bullet-bio",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.bio(),
        shadow = bullet_animation.bio_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.6, size = 5, color = { r = 127, g = 140, b = 0 } },
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
                        entity_name = "explosion-hit-b",
                        tile_collision_mask = { "water-tile" }, --new
                    },
                    {
                        type = "create-entity", -- new
                        entity_name = "water-splash", --new
                        tile_collision_mask = { "ground-tile" } --new
                    },
                    {
                        type = "create-sticker",
                        sticker = "bio-bullet-sticker",
                        show_in_tooltip = true,
                    },
                    {
                        type = "damage",
                        damage = { amount = 2, type = "physical" },
                    },
                    {
                        type = "damage",
                        damage = { amount = 22, type = "poison" },
                    }
                }
            }
        }
    },
-- Incendiary Bullet Projectile --
    {
        type = "projectile",
        name = "ta-projectile-bullet-fire",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.fire(),
        shadow = bullet_animation.fire_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.6, size = 5, color = { r = 255, g = 114, b = 0 } },
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
                        entity_name = "explosion-hit-fire",
                        tile_collision_mask = { "water-tile" }, --new
                    },
                    {
                        type = "create-entity", -- new
                        entity_name = "water-splash", --new
                        tile_collision_mask = { "ground-tile" } --new
                    },
                    {
                        type = "create-sticker",
                        sticker = "fire-bullet-sticker",
                        show_in_tooltip = true,
                    },
                    {
                        type = "create-fire",
                        entity_name = "fire-flame",
                        initial_ground_flame_count = 1,
                        tile_collision_mask = { "water-tile" }, --new
                    },
                    {
                        type = "damage",
                        damage = { amount = 2, type = "physical" },
                    },
                    {
                        type = "damage",
                        damage = { amount = 22, type = "fire" },
                    }
                }
            }
        }
    },
-- HE Bullet Projectile --
    {
        type = "projectile",
        name = "ta-projectile-bullet-he",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.he(),
        shadow = bullet_animation.he_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.7, size = 5, color = { r = 190, g = 100, b = 100 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-he-bullet",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "create-entity",
                            entity_name = "explosion-he-scorchmark",
                            check_buildability = true,
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "damage",
                            damage = { amount = 2, type = "physical" },
                        },
                        {
                            type = "push-back",
                            distance = 0.5,
                            show_in_tooltip = true,
                        },
                        {
                            type = "destroy-decoratives", -- new
                            from_render_layer = "decorative", -- new
                            to_render_layer = "object", -- new
                            include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true -- new
                            include_decals = false, -- new
                            invoke_decorative_trigger = true, -- new
                            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set -- new
                            radius = 1 -- large radius for demostrative purposes -- new -- old: 2.25 
                        },
                    },
                },
            },
            {
                type = "area",
                radius = 1,
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "damage",
                            damage = { amount = 22, type = "explosion", }
                        },
                        -- {
                        --     type = "create-entity",
                        --     entity_name = "explosion"
                        -- },
                    },
                },
            },
        },
    },
-- Bio Shell Projectile --
    {
        type = "projectile",
        name = "ta-projectile-shell-bio",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.bio_shotgun(),
        shadow = bullet_animation.bio_shotgun_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.3, size = 3, color = { r = 127, g = 140, b = 0 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-b-s",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "create-sticker",
                            sticker = "bio-bullet-sticker",
                            show_in_tooltip = true,
                        },
                        {
                            type = "damage",
                            damage = { amount = 2, type = "physical" },
                        },
                        {
                            type = "damage",
                            damage = { amount = 22, type = "poison" },
                        },
                    }
                }
            }
        }
    },
-- Incendiary Shell Projectile --
    {
        type = "projectile",
        name = "ta-projectile-shell-fire",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.fire_shotgun(),
        shadow = bullet_animation.fire_shotgun_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.3, size = 3, color = { r = 255, g = 114, b = 0 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-fire-s",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "create-sticker",
                            sticker = "fire-bullet-sticker",
                            show_in_tooltip = true,
                        },
                        {
                            type = "create-fire",
                            entity_name = "fire-flame",
                            initial_ground_flame_count = 1,
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "damage",
                            damage = { amount = 2, type = "physical" },
                        },
                        {
                            type = "damage",
                            damage = { amount = 22, type = "fire" },
                        },
                    }
                }
            }
        }
    },
-- HE Shell Projectile --
    {
        type = "projectile",
        name = "ta-projectile-shell-he",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 0,
        animation = bullet_animation.he_shotgun(),
        shadow = bullet_animation.he_shotgun_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.4, size = 4, color = { r = 190, g = 100, b = 100 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-he-shell",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "create-entity",
                            entity_name = "explosion-he-scorchmark-shell",
                            check_buildability = true,
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "damage",
                            damage = { amount = 24, type = "physical" },
                        },
                        {
                            type = "push-back",
                            distance = 0.65,
                            show_in_tooltip = true,
                        },
                        {
                            type = "destroy-decoratives",
                            from_render_layer = "decorative",
                            to_render_layer = "object",
                            include_soft_decoratives = true,
                            include_decals = false,
                            invoke_decorative_trigger = true,
                            decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set -- new
                            radius = 1
                        },
                    },
                },
            },
            {
                type = "area",
                radius = 1.2,
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "damage",
                            damage = { amount = 34, type = "explosion", }
                        },
                        -- {
                        --     type = "create-entity",
                        --     entity_name = "explosion"
                        -- },
                    },
                },
            },
        },
    },
-- Uranium Shell Projectile --
    {
        type = "projectile",
        name = "ta-projectile-shell-uranium",
        flags = { "not-on-map" },
        collision_box = { { -0.5, -1 }, { 0.5, 1 } },
        acceleration = -0.015,
        piercing_damage = 12,
        animation = bullet_animation.uranium_shotgun(),
        shadow = bullet_animation.uranium_shotgun_shadow(),
        hit_at_collision_position = true,
        force_condition = "not-same",
        light = { intensity = 0.5, size = 5, color = { r = 127.5, g = 255, b = 127.5 } },
        action =
        {
            {
                type = "direct",
                action_delivery =
                {
                    type = "instant",
                    target_effects =
                    {
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-u-s",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity",
                            entity_name = "explosion-hit-u-scorchmark",
                            tile_collision_mask = { "water-tile" }, --new
                        },
                        {
                            type = "create-entity", -- new
                            entity_name = "water-splash", --new
                            tile_collision_mask = { "ground-tile" } --new
                        },
                        {
                            type = "damage", --new
                            damage = { amount = 10, type = "physical" }, --new
                        },
                        {
                            type = "damage", --new
                            damage = { amount = 14, type = "radioactive" }, --new
                        },
                        {
                            type = "create-entity", --new
                            entity_name = "ta-uranium-damage", --new
                            tile_collision_mask = { "water-tile" }, --new
                        },
                    }
                }
            }
        }
    }
})
end

return traceProjectile


-- NEW --
-- data:extend({
--     -- Bio Bullet Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-bullet-bio",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 0,
--             animation = bullet_animation.bio(),
--             shadow = bullet_animation.bio_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.6, size = 5, color = { r = 127, g = 140, b = 0 } },
--             action =
--             {
--                 type = "direct",
--                 action_delivery =
--                 {
--                     type = "instant",
--                     target_effects =
--                     {
--                         {
--                             type = "create-entity",
--                             entity_name = "explosion-hit-b",
--                             tile_collision_mask = { "water-tile" }, --new
--                         },
--                         {
--                             type = "create-entity", -- new
--                             entity_name = "water-splash", --new
--                             tile_collision_mask = { "ground-tile" } --new
--                         },
--                         {
--                             type = "create-sticker",
--                             sticker = "bio-bullet-sticker",
--                             show_in_tooltip = true,
--                         },
--                         {
--                             type = "damage",
--                             damage = { amount = 2, type = "physical" },
--                         },
--                         {
--                             type = "damage",
--                             damage = { amount = 22, type = "poison" },
--                         }
--                     }
--                 }
--             }
--         },
--     -- Incediary Bullet Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-bullet-fire",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 0,
--             animation = bullet_animation.fire(),
--             shadow = bullet_animation.fire_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.6, size = 5, color = { r = 255, g = 114, b = 0 } },
--             action =
--             {
--                 type = "direct",
--                 action_delivery =
--                 {
--                     type = "instant",
--                     target_effects =
--                     {
--                         {
--                             type = "create-entity",
--                             entity_name = "explosion-hit-fire",
--                             tile_collision_mask = { "water-tile" }, --new
--                         },
--                         {
--                             type = "create-entity", -- new
--                             entity_name = "water-splash", --new
--                             tile_collision_mask = { "ground-tile" } --new
--                         },
--                         {
--                             type = "create-sticker",
--                             sticker = "fire-bullet-sticker",
--                             show_in_tooltip = true,
--                         },
--                         {
--                             type = "create-fire",
--                             entity_name = "fire-flame",
--                             initial_ground_flame_count = 1,
--                             tile_collision_mask = { "water-tile" }, --new
--                         },
--                         {
--                             type = "damage",
--                             damage = { amount = 2, type = "physical" },
--                         },
--                         {
--                             type = "damage",
--                             damage = { amount = 22, type = "fire" },
--                         }
--                     }
--                 }
--             }
--         },
--     -- HE Bullet Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-bullet-he",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 0,
--             animation = bullet_animation.he(),
--             shadow = bullet_animation.he_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.7, size = 5, color = { r = 190, g = 100, b = 100 } },
--             action =
--             {
--                 {
--                     type = "direct",
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-he-bullet",
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "create-entity", -- new
--                                 entity_name = "water-splash", --new
--                                 tile_collision_mask = { "ground-tile" } --new
--                             },
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-he-scorchmark",
--                                 check_buildability = true,
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 2, type = "physical" },
--                             },
--                             {
--                                 type = "push-back",
--                                 distance = 0.5,
--                                 show_in_tooltip = true,
--                             },
--                             {
--                                 type = "destroy-decoratives", -- new
--                                 from_render_layer = "decorative", -- new
--                                 to_render_layer = "object", -- new
--                                 include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true -- new
--                                 include_decals = false, -- new
--                                 invoke_decorative_trigger = true, -- new
--                                 decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set -- new
--                                 radius = 1 -- large radius for demostrative purposes -- new -- old: 2.25 
--                             },
--                         },
--                     },
--                 },
--                 {
--                     type = "area",
--                     radius = 1,
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "damage",
--                                 damage = { amount = 22, type = "explosion", }
--                             },
--                             -- {
--                             --     type = "create-entity",
--                             --     entity_name = "explosion"
--                             -- },
--                         },
--                     },
--                 },
--             },
--         },
--     -- Bio Shell Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-shell-bio",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 0,
--             animation = bullet_animation.bio_shotgun(),
--             shadow = bullet_animation.bio_shotgun_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.3, size = 3, color = { r = 127, g = 140, b = 0 } },
--             action =
--             {
--                 {
--                     type = "direct",
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-hit-b-s",
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "create-entity", -- new
--                                 entity_name = "water-splash", --new
--                                 tile_collision_mask = { "ground-tile" } --new
--                             },
--                             {
--                                 type = "create-sticker",
--                                 sticker = "bio-bullet-sticker",
--                                 show_in_tooltip = true,
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 2, type = "physical" },
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 22, type = "poison" },
--                             },
--                         }
--                     }
--                 }
--             }
--         },
--     -- Incediary Shell Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-shell-fire",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 0,
--             animation = bullet_animation.fire_shotgun(),
--             shadow = bullet_animation.fire_shotgun_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.3, size = 3, color = { r = 255, g = 114, b = 0 } },
--             action =
--             {
--                 {
--                     type = "direct",
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-hit-fire-s",
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "create-entity", -- new
--                                 entity_name = "water-splash", --new
--                                 tile_collision_mask = { "ground-tile" } --new
--                             },
--                             {
--                                 type = "create-sticker",
--                                 sticker = "fire-bullet-sticker",
--                                 show_in_tooltip = true,
--                             },
--                             {
--                                 type = "create-fire",
--                                 entity_name = "fire-flame",
--                                 initial_ground_flame_count = 1,
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 2, type = "physical" },
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 22, type = "fire" },
--                             },
--                         }
--                     }
--                 }
--             }
--         },
--     -- HE Shell Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-shell-he",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 0,
--             animation = bullet_animation.he_shotgun(),
--             shadow = bullet_animation.he_shotgun_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.4, size = 4, color = { r = 190, g = 100, b = 100 } },
--             action =
--             {
--                 {
--                     type = "direct",
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-he-shell",
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "create-entity", -- new
--                                 entity_name = "water-splash", --new
--                                 tile_collision_mask = { "ground-tile" } --new
--                             },
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-he-scorchmark-shell",
--                                 check_buildability = true,
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 24, type = "physical" },
--                             },
--                             {
--                                 type = "push-back",
--                                 distance = 0.65,
--                                 show_in_tooltip = true,
--                             },
--                             {
--                                 type = "destroy-decoratives",
--                                 from_render_layer = "decorative",
--                                 to_render_layer = "object",
--                                 include_soft_decoratives = true,
--                                 include_decals = false,
--                                 invoke_decorative_trigger = true,
--                                 decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set -- new
--                                 radius = 1
--                             },
--                         },
--                     },
--                 },
--                 {
--                     type = "area",
--                     radius = 1.2,
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "damage",
--                                 damage = { amount = 34, type = "explosion", }
--                             },
--                             -- {
--                             --     type = "create-entity",
--                             --     entity_name = "explosion"
--                             -- },
--                         },
--                     },
--                 },
--             },
--         },
--     -- Uranium Shell Projectile --
--         {
--             type = "projectile",
--             name = "ta-projectile-shell-uranium",
--             flags = { "not-on-map" },
--             collision_box = { { -0.5, -1 }, { 0.5, 1 } },
--             acceleration = -0.015,
--             piercing_damage = 12,
--             animation = bullet_animation.uranium_shotgun(),
--             shadow = bullet_animation.uranium_shotgun_shadow(),
--             hit_at_collision_position = true,
--             force_condition = "not-same",
--             light = { intensity = 0.5, size = 5, color = { r = 127.5, g = 255, b = 127.5 } },
--             action =
--             {
--                 {
--                     type = "direct",
--                     action_delivery =
--                     {
--                         type = "instant",
--                         target_effects =
--                         {
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-hit-u-s",
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "create-entity",
--                                 entity_name = "explosion-hit-u-scorchmark",
--                                 tile_collision_mask = { "water-tile" }, --new
--                             },
--                             {
--                                 type = "create-entity", -- new
--                                 entity_name = "water-splash", --new
--                                 tile_collision_mask = { "ground-tile" } --new
--                             },
--                             {
--                                 type = "damage",
--                                 damage = { amount = 24, type = "physical" },
--                             },
--                         }
--                     }
--                 }
--             }
--         }
-- })
