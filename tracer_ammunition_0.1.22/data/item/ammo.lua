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


local traceAmmo = {}

-- VANILLA --
data:extend({
-- Firearm Magazine --
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
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 1,
            target_type = "direction",
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    type = "projectile",
                    projectile = "ta-projectile-bullet-normal",
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
        },
        subgroup = "ammo",
        order = "aa",
        stack_size = 200,
        magazine_size = 10,
    },
-- Piercing Rounds Magazine --
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
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.9,
            target_type = "direction",
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-bullet-piercing",
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
        },
        subgroup = "ammo",
        order = "ab",
        stack_size = 200,
        magazine_size = 11,
    },
-- Uranium Rounds Magazine --
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
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.8,
            target_type = "direction",
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-bullet-uranium",
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
        },
        subgroup = "ammo",
        order = "af",
        stack_size = 200,
        magazine_size = 13,
    },
-- Shotgun Shell --
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
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 1,
            target_type = "direction",
            clamp_position = true, -- not necessary for target_type = "direction", still, keep it
            action =
            {
                type = "direct",
                repeat_count = 12,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-shell-normal",
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
        },
        subgroup = "ammo",
        order = "ba",
        stack_size = 200,
        magazine_size = 10,
    },
-- Piercing Shotgun Shell --
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
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.9,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 16,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-shell-piercing",
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
        },
        subgroup = "ammo",
        order = "bb",
        stack_size = 200,
        magazine_size = 10,
    }
})

-- NEW --
if settings.startup["trace-ammunition-enableNewAmmo"].value then
data:extend({
-- Bio Rounds Magazine --
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
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.85,
            target_type = "direction",
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-bullet-bio",
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
        },
        subgroup = "ammo",
        order = "ac",
        stack_size = 200,
        magazine_size = 12,
    },
-- Incendiary Rounds Magazine --
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
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.85,
            target_type = "direction",
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-bullet-fire",
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
        },
        subgroup = "ammo",
        order = "ad",
        stack_size = 200,
        magazine_size = 12,
    },
-- HE Rounds Magazine --
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
        ammo_type =
        {
            category = "bullet",
            cooldown_modifier = 0.8,
            target_type = "direction",
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-bullet-he",
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
        },
        subgroup = "ammo",
        order = "ae",
        stack_size = 200,
        magazine_size = 13,
    },
-- Bio Shotgun Shell --
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
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.85,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 16,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-shell-bio",
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
        },
        subgroup = "ammo",
        order = "bc",
        stack_size = 200,
        magazine_size = 11,
    },
-- Incendiary Shotgun Shell --
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
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.85,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 16,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-shell-fire",
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
        },
        subgroup = "ammo",
        order = "bd",
        stack_size = 200,
        magazine_size = 11,
    },
-- HE Shotgun Shell --
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
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.8,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 1,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-shell-he",
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
        },
        subgroup = "ammo",
        order = "be",
        stack_size = 200,
        magazine_size = 12,
    },
-- Uranium Shotgun Shell --
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
        ammo_type =
        {
            category = "shotgun-shell",
            cooldown_modifier = 0.8,
            target_type = "direction",
            clamp_position = true,
            action =
            {
                type = "direct",
                repeat_count = 16,
                action_delivery =
                {
                    {
                        type = "projectile",
                        projectile = "ta-projectile-shell-uranium",
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
        },
        subgroup = "ammo",
        order = "bf",
        stack_size = 200,
        magazine_size = 12,
    }
})
end

return traceAmmo


-- NEW --
-- data:extend({
--     -- Bio Rounds Magazine --
--     {
--         type = "ammo",
--         name = "bio-rounds-magazine",
--         icon = "__tracer_ammunition__/graphics/icons/bio_magazine.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/bio_magazine.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "bullet",
--             cooldown_modifier = 0.85,
--             target_type = "direction",
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 1,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-bullet-bio",
--                             starting_speed = 1.2,
--                             direction_deviation = 0.12,
--                             range_deviation = 0.12,
--                             max_range = 40,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-bio",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "ac",
--         stack_size = 200,
--         magazine_size = 12,
--     },
-- -- Incediary Rounds Magazine --
--     {
--         type = "ammo",
--         name = "fire-rounds-magazine",
--         icon = "__tracer_ammunition__/graphics/icons/fire_magazine.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/fire_magazine.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "bullet",
--             cooldown_modifier = 0.85,
--             target_type = "direction",
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 1,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-bullet-fire",
--                             starting_speed = 1.2,
--                             direction_deviation = 0.12,
--                             range_deviation = 0.12,
--                             max_range = 40,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-fire",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "ad",
--         stack_size = 200,
--         magazine_size = 12,
--     },
-- -- HE Rounds Magazine --
--     {
--         type = "ammo",
--         name = "he-rounds-magazine",
--         icon = "__tracer_ammunition__/graphics/icons/he_magazine.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/he_magazine.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "bullet",
--             cooldown_modifier = 0.8,
--             target_type = "direction",
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 1,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-bullet-he",
--                             starting_speed = 1.4,
--                             direction_deviation = 0.1,
--                             range_deviation = 0.1,
--                             max_range = 44,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-he",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "ae",
--         stack_size = 200,
--         magazine_size = 13,
--     },
--     -- Bio Shotgun Shell --
--     {
--         type = "ammo",
--         name = "bio-shotgun-shell",
--         icon = "__tracer_ammunition__/graphics/icons/bio_shotgun_shell.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/bio_shotgun_shell.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "shotgun-shell",
--             cooldown_modifier = 0.85,
--             target_type = "direction",
--             clamp_position = true,
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 16,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-shell-bio",
--                             starting_speed = 1.2,
--                             direction_deviation = 0.24,
--                             range_deviation = 0.24,
--                             max_range = 32,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-bio",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "bc",
--         stack_size = 200,
--         magazine_size = 11,
--     },
-- -- Incediary Shotgun Shell --
--     {
--         type = "ammo",
--         name = "fire-shotgun-shell",
--         icon = "__tracer_ammunition__/graphics/icons/fire_shotgun_shell.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/fire_shotgun_shell.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "shotgun-shell",
--             cooldown_modifier = 0.85,
--             target_type = "direction",
--             clamp_position = true,
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 16,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-shell-fire",
--                             starting_speed = 1.2,
--                             direction_deviation = 0.24,
--                             range_deviation = 0.24,
--                             max_range = 32,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-fire",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "bd",
--         stack_size = 200,
--         magazine_size = 11,
--     },
-- -- HE Shotgun Shell --
--     {
--         type = "ammo",
--         name = "he-shotgun-shell",
--         icon = "__tracer_ammunition__/graphics/icons/he_shotgun_shell.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/he_shotgun_shell.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "shotgun-shell",
--             cooldown_modifier = 0.8,
--             target_type = "direction",
--             clamp_position = true,
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 1,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-shell-he",
--                             starting_speed = 1.4,
--                             direction_deviation = 0.15,
--                             range_deviation = 0.15,
--                             max_range = 36,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-he",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "be",
--         stack_size = 200,
--         magazine_size = 12,
--     },
-- -- Uranium Shotgun Shell --
--     {
--         type = "ammo",
--         name = "uranium-shotgun-shell",
--         icon = "__tracer_ammunition__/graphics/icons/uranium_shotgun_shell.png",
--         icon_size = 64,
--         icon_mimaps = 4,
--         pictures =
--         {
--             {
--                 size = 64,
--                 filename = "__tracer_ammunition__/graphics/icons/uranium_shotgun_shell.png",
--                 scale = 0.25,
--                 mipmap_count = 4,
--             },
--         },
--         ammo_type =
--         {
--             category = "shotgun-shell",
--             cooldown_modifier = 0.8,
--             target_type = "direction",
--             clamp_position = true,
--             action =
--             {
--                 {
--                     type = "direct",
--                     repeat_count = 16,
--                     action_delivery =
--                     {
--                         {
--                             type = "projectile",
--                             projectile = "ta-projectile-shell-uranium",
--                             starting_speed = 1.75,
--                             direction_deviation = 0.2,
--                             range_deviation = 0.2,
--                             max_range = 37,
--                             source_effects =
--                             {
--                                 {
--                                     type = "create-explosion",
--                                     entity_name = "explosion-gunshot-u",
--                                 }
--                             }
--                         }
--                     }
--                 }
--             }
--         },
--         subgroup = "ammo",
--         order = "bf",
--         stack_size = 200,
--         magazine_size = 12,
--     }
-- })
