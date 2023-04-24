-- Defender --

local hit_effects = require("__base__/prototypes/entity/hit-effects")
local sounds = require("__base__/prototypes/entity/sounds")

local robot_animations = {}

robot_animations.defender =
{

    idle =
    {
        layers =
        {
        {
            filename = "__base__/graphics/entity/defender-robot/defender-robot.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 33,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, 0.25),
            hr_version =
            {
            filename = "__base__/graphics/entity/defender-robot/hr-defender-robot.png",
            priority = "high",
            line_length = 16,
            width = 56,
            height = 59,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, 0.25),
            scale = 0.5
            }
        },
        {
            filename = "__base__/graphics/entity/defender-robot/defender-robot-mask.png",
            priority = "high",
            line_length = 16,
            width = 18,
            height = 16,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -4.75),
            apply_runtime_tint = true,
            hr_version =
            {
            filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-mask.png",
            priority = "high",
            line_length = 16,
            width = 28,
            height = 21,
            frame_count = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -4.75),
            apply_runtime_tint = true,
            scale = 0.5
            }
        }
        }
    },
    shadow_idle =
    {
        filename = "__base__/graphics/entity/defender-robot/defender-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 45,
        height = 26,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(25.5, 19),
        draw_as_shadow = true,
        hr_version =
        {
        filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 88,
        height = 50,
        frame_count = 1,
        direction_count = 16,
        shift = util.by_pixel(25.5, 19),
        scale = 0.5,
        draw_as_shadow = true
        }
    },
    in_motion =
    {
        layers =
        {
        {
            filename = "__base__/graphics/entity/defender-robot/defender-robot.png",
            priority = "high",
            line_length = 16,
            width = 32,
            height = 33,
            frame_count = 1,
            animation_speed = 1,
            direction_count = 16,
            shift = util.by_pixel(0, 0.25),
            y = 33,
            hr_version =
            {
            filename = "__base__/graphics/entity/defender-robot/hr-defender-robot.png",
            priority = "high",
            line_length = 16,
            width = 56,
            height = 59,
            frame_count = 1,
            animation_speed = 1,
            direction_count = 16,
            shift = util.by_pixel(0, 0.25),
            y = 59,
            scale = 0.5
            }
        },
        {
            filename = "__base__/graphics/entity/defender-robot/defender-robot-mask.png",
            priority = "high",
            line_length = 16,
            width = 18,
            height = 16,
            frame_count = 1,
            animation_speed = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -4.75),
            apply_runtime_tint = true,
            y = 16,
            hr_version =
            {
            filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-mask.png",
            priority = "high",
            line_length = 16,
            width = 28,
            height = 21,
            frame_count = 1,
            animation_speed = 1,
            direction_count = 16,
            shift = util.by_pixel(0, -4.75),
            apply_runtime_tint = true,
            y = 21,
            scale = 0.5
            }
        }
        }
    },
    shadow_in_motion =
    {
        filename = "__base__/graphics/entity/defender-robot/defender-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 45,
        height = 26,
        frame_count = 1,
        animation_speed = 1,
        direction_count = 16,
        shift = util.by_pixel(25.5, 19),
        draw_as_shadow = true,
        hr_version =
        {
        filename = "__base__/graphics/entity/defender-robot/hr-defender-robot-shadow.png",
        priority = "high",
        line_length = 16,
        width = 88,
        height = 50,
        frame_count = 1,
        animation_speed = 1,
        direction_count = 16,
        shift = util.by_pixel(25.5, 19),
        scale = 0.5,
        draw_as_shadow = true
        }
    }
}

local robots =
{
    {
    type = "combat-robot",
    name = "defender",
    icon = "__base__/graphics/icons/defender.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"placeable-player", "player-creation", "placeable-off-grid", "not-on-map", "not-repairable"},
    resistances =
    {
      {
        type = "fire",
        percent = 95
      },
      {
        type = "acid",
        decrease = 0,
        percent = 80
      }
    },
    subgroup="capsule",
    order="e-a-a",
    max_health = 60,
    alert_when_damaged = false,
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{-0.5, -1.5}, {0.5, -0.5}},
    hit_visualization_box = {{-0.1, -1.1}, {0.1, -1.0}},
    damaged_trigger_effect = hit_effects.flying_robot(),
    dying_explosion = "defender-robot-explosion",
    time_to_live = 60 * 45,
    follows_player = true,
    friction = 0.01,
    range_from_player = 6.0,
    speed = 0.01,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/defender-robot-loop.ogg",
        volume = 0.7
      },
      apparent_volume = 1,
      persistent = true
    },
    destroy_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        source_effects =
        {
          type = "create-entity",
          entity_name = "defender-robot-explosion"
        }
      }
    },
    attack_parameters =
    {
        type = "projectile",
        cooldown = 20,
        cooldown_deviation = 0.2,
        projectile_center = {0, 1},
        projectile_creation_distance = 0.6,
        range = 15,
        sound = sounds.defender_gunshot,
        ammo_type =
        {
            category = "bullet",
            target_type = "direction", -- new
            action =
            {
                type = "direct",
                action_delivery =
                    {
                    type = "projectile",--"instant",
                    projectile = "ta-projectile-bullet-piercing", -- new
                    starting_speed = 1, --new
                    direction_deviation = 0.05, --new
                    range_deviation = 0.05, --new
                    source_effects =
                    {
                        type = "create-explosion",
                        entity_name = "explosion-gunshot-p",
                    },
                    -- {
                    --     type = "create-explosion",
                    --     entity_name = "explosion-gunshot-small"
                    -- },
                    -- target_effects =
                    -- {
                    --     {
                    --         type = "create-entity",
                    --         entity_name = "explosion-hit"
                    --     },
                    --     {
                    --         type = "damage",
                    --         damage = { amount = 8 , type = "physical"}
                    --     }
                    -- }
                    }
            }
        }
    },
    water_reflection = robot_reflection(0.8),
    idle = robot_animations.defender.idle,
    in_motion = robot_animations.defender.in_motion,
    shadow_idle = robot_animations.defender.shadow_idle,
    shadow_in_motion = robot_animations.defender.shadow_in_motion
    }
}

data:extend(robots)
