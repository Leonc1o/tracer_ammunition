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


local bullet_animation = require("__tracer_ammunition__/data/script/bullet/bullet_animation") -- takes information from bullet_animation.lua

require("__tracer_ammunition__/data/script/bullet/bullet_muzzle")

-- Firearm Magazine -- 

data:extend({
    {
        type = "ammo",
        name = "firearm-magazine",
        icon = "__base__/graphics/icons/firearm-magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__base__/graphics/icons/firearm-magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "aa",
        stack_size = 200,
        magazine_size = 10,
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 1,
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        type = "projectile",
                        projectile = "f-a-bullet",
                        starting_speed = 1,
                        direction_deviation = 0.15,
                        range_deviation = 0.15,
                        max_range = 30,
                        source_effects =
                        {
                            {
                                type = "create-explosion",
                                entity_name = "explosion-gunshot-normal",
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "f-a-bullet",
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
})

-- Piercing Rounds Magazine -- 

data:extend({
    {
        type = "ammo",
        name = "piercing-rounds-magazine",
        icon = "__base__/graphics/icons/piercing-rounds-magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__base__/graphics/icons/piercing-rounds-magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "ab",
        stack_size = 200,
        magazine_size = 11,
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.9,
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "p-r-bullet",
                            starting_speed = 1.1,
                            direction_deviation = 0.13,
                            range_deviation = 0.13,
                            max_range = 35,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-p",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "p-r-bullet",
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
    }
})

-- Bio Rounds Magazine --  -- CLOSED FOR TESTING

data:extend({
    {
        type = "ammo",
        name = "bio-rounds-magazine",
        icon = "__tracer_ammunition__/graphics/icons/bio_magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/bio_magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "ac",
        stack_size = 200,
        magazine_size = 12,
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.85,
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "b-r-bullet",
                            starting_speed = 1.2,
                            direction_deviation = 0.12,
                            range_deviation = 0.12,
                            max_range = 40,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-bio",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "b-r-bullet",
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
    }
})

-- Incediary Rounds Magazine --

data:extend({
    {
        type = "ammo",
        name = "fire-rounds-magazine",
        icon = "__tracer_ammunition__/graphics/icons/fire_magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/fire_magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "ad",
        stack_size = 200,
        magazine_size = 12,
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.85,
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "fire-bullet",
                            starting_speed = 1.2,
                            direction_deviation = 0.12,
                            range_deviation = 0.12,
                            max_range = 40,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-fire",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "fire-bullet",
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
    }
})

-- HE Rounds Magazine --

data:extend({
    {
        type = "ammo",
        name = "he-rounds-magazine",
        icon = "__tracer_ammunition__/graphics/icons/he_magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/he_magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "ae",
        stack_size = 200,
        magazine_size = 13,
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.8,
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "h-e-bullet",
                            starting_speed = 1.4,
                            direction_deviation = 0.1,
                            range_deviation = 0.1,
                            max_range = 44,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-he",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "h-e-bullet",
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
})

-- Uranium Rounds Magazine --

data:extend({
    {
        type = "ammo",
        name = "uranium-rounds-magazine",
        icon = "__base__/graphics/icons/uranium-rounds-magazine.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__base__/graphics/icons/uranium-rounds-magazine.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "af",
        stack_size = 200,
        magazine_size = 13,
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.8,
            target_type = "direction",
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "u-r-bullet",
                            starting_speed = 1.75,
                            direction_deviation = 0.1,
                            range_deviation = 0.1,
                            max_range = 45,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-u",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "u-r-bullet",
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
                            type = "damage",
                            damage = { amount = 24, type = "physical" },
                        },
                    }
                }
            }
        }
    }
})

-- Shotgun Shell --

data:extend({
    {
        type = "ammo",
        name = "shotgun-shell",
        icon = "__base__/graphics/icons/shotgun-shell.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__base__/graphics/icons/shotgun-shell.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "ba",
        stack_size = 200,
        magazine_size = 10,
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 1,
            target_type = "direction",
            clamp_position = true, -- not necessary for target_type = "direction", still, keep it
            action =
            {
                {
                    type = "direct",
                    repeat_count = 12,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "s-shell",
                            starting_speed = 1,
                            direction_deviation = 0.3,
                            range_deviation = 0.3,
                            max_range = 22,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-normal",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "s-shell",
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
    }
})

-- Piercing Shotgun Shell --

data:extend({
    {
        type = "ammo",
        name = "piercing-shotgun-shell",
        icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__base__/graphics/icons/piercing-shotgun-shell.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "bb",
        stack_size = 200,
        magazine_size = 10,
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.9,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                {
                    type = "direct",
                    repeat_count = 16,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "p-s-shell",
                            starting_speed = 1.1,
                            direction_deviation = 0.26,
                            range_deviation = 0.26,
                            max_range = 27,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-p",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "p-s-shell",
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

-- Bio Shotgun Shell --

data:extend({
    {
        type = "ammo",
        name = "bio-shotgun-shell",
        icon = "__tracer_ammunition__/graphics/icons/bio_shotgun_shell.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/bio_shotgun_shell.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "bc",
        stack_size = 200,
        magazine_size = 11,
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.85,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                {
                    type = "direct",
                    repeat_count = 16,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "b-s-shell",
                            starting_speed = 1.2,
                            direction_deviation = 0.24,
                            range_deviation = 0.24,
                            max_range = 32,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-bio",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "b-s-shell",
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
    }
})

-- Incediary Shotgun Shell --

data:extend({
    {
        type = "ammo",
        name = "fire-shotgun-shell",
        icon = "__tracer_ammunition__/graphics/icons/fire_shotgun_shell.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/fire_shotgun_shell.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "bd",
        stack_size = 200,
        magazine_size = 11,
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.85,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                {
                    type = "direct",
                    repeat_count = 16,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "fire-s-shell",
                            starting_speed = 1.2,
                            direction_deviation = 0.24,
                            range_deviation = 0.24,
                            max_range = 32,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-fire",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "fire-s-shell",
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
    }
})

-- HE Shotgun Shell --

data:extend({
    {
        type = "ammo",
        name = "he-shotgun-shell",
        icon = "__tracer_ammunition__/graphics/icons/he_shotgun_shell.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/he_shotgun_shell.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "be",
        stack_size = 200,
        magazine_size = 12,
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.8,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                {
                    type = "direct",
                    repeat_count = 1,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "he-s-bullet",
                            starting_speed = 1.4,
                            direction_deviation = 0.15,
                            range_deviation = 0.15,
                            max_range = 36,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-he",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "he-s-bullet",
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
})

-- Uranium Shotgun Shell --

data:extend({
    {
        type = "ammo",
        name = "uranium-shotgun-shell",
        icon = "__tracer_ammunition__/graphics/icons/uranium_shotgun_shell.png",
        icon_size = 64,
        icon_mimaps = 4,
        pictures =
        {
            {
                size = 64,
                filename = "__tracer_ammunition__/graphics/icons/uranium_shotgun_shell.png",
                scale = 0.25,
                mipmap_count = 4,
            },
        },
        subgroup = "ammo",
        order = "bf",
        stack_size = 200,
        magazine_size = 12,
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.8,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                {
                    type = "direct",
                    repeat_count = 16,
                    action_delivery =
                    {
                        {
                            type = "projectile",
                            projectile = "uranium-s-bullet",
                            starting_speed = 1.75,
                            direction_deviation = 0.2,
                            range_deviation = 0.2,
                            max_range = 37,
                            source_effects =
                            {
                                {
                                    type = "create-explosion",
                                    entity_name = "explosion-gunshot-u",
                                }
                            }
                        }
                    }
                }
            }
        }
    },
    -- Bullet entity --
    {
        type = "projectile",
        name = "uranium-s-bullet",
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
                            type = "damage",
                            damage = { amount = 24, type = "physical" },
                        },
                    }
                }
            }
        }
    },
})