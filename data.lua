game_core = {}
flib_utils = {}
cyrus_core = {}
prometheus_core = {}

game_core.hit_effects = require ("__base__.prototypes.entity.hit-effects")
game_core.explosion_animations = require("__base__.prototypes.entity.explosion-animations")
game_core.smoke_animations = require("__base__.prototypes.entity.smoke-animations")
game_core.math3d = require "math3d"
game_core.fireutil = require("__base__.prototypes.fire-util")

prometheus_core.dir = "__PLORD_Prometheus_GrenadeLauncher__/"
prometheus_core.weapon_assets_40mm = prometheus_core.dir .. "graphics/icons/weapons/40mm_gl_"
prometheus_core.weapon_assets = prometheus_core.dir .. "graphics/entity/weapons/"
prometheus_core.weapon_icons = prometheus_core.dir .. "graphics/icons/weapons/"
prometheus_core.technologies_icons = prometheus_core.dir .. "graphics/technology/"

game_core.base_ent_sounds_path = require("__base__.prototypes.entity.sounds")
flib_utils.copy_prototype = require('__flib__.data-util').copy_prototype

require "util"
require ("prototypes/types")
require ("prototypes/item_groups")
require ("prototypes/prometheus")
require ("prototypes/weapons")
require ("prototypes/resistances")
require ("prototypes/data_additional")
require ("prototypes/data_promethium")


local PLORD_he_grenade_explosion = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_he_grenade_explosion")
PLORD_he_grenade_explosion.light = {intensity = 0.35,  size = 35, color = {r=1.0, g=0.5, b=0.3}}
PLORD_he_grenade_explosion.animations = 
		{
			filename = "__base__/graphics/entity/explosion/explosion-3.png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 52,
			height = 46,
			frame_count = 17,
			animation_speed = 0.5,
			shift = util.by_pixel(-1,2),
			scale = 4,
			tint = {r=1.0, g=0.5, b=0.3, a = 1.0},
			hr_version =
			{
				filename = "__base__/graphics/entity/explosion/hr-explosion-3.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 102,
				height = 88,
				frame_count = 17,
				animation_speed = 0.5,
				shift = util.by_pixel(-1,1.5),
				scale = 4 * 0.5,
				tint = {r=1.0, g=0.5, b=0.3, a = 1.0}
			}
		}
PLORD_he_grenade_explosion.sound = {
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/he_grenade_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.5},
			{filename = prometheus_core.dir .. "sound/he_grenade_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.4},
			{filename = prometheus_core.dir .. "sound/he_grenade_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.5},
		}
}

local PLORD_ironfist_hit_explosion = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_ironfist_hit_explosion")
PLORD_ironfist_hit_explosion.light = {intensity = 0.35,  size = 5, color = {r=1.0, g=0.5, b=0.3}}
PLORD_ironfist_hit_explosion.height = 0.2
PLORD_ironfist_hit_explosion.created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 5,
            particle_name = "burner-inserter-metal-particle-medium",
            offset_deviation = { { -0.5, -0.4922 }, { 0.5, 0.4922 } },
            initial_height = 0.3,
            initial_height_deviation = 0.44,
            initial_vertical_speed = 0.058,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "burner-inserter-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 1,
            particle_name = "burner-inserter-mechanical-component-particle-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.4,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.049,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
PLORD_ironfist_hit_explosion.animations = {
      {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-1.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 44,
        height = 90,
        frame_count = 24,
        animation_speed = 0.85,
        shift = util.by_pixel(-1,-24),
        scale = 0.5 / 2,
        hr_version =
        {
          filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-1.png",
          draw_as_glow = true,
          priority = "high",
          line_length = 6,
          width = 88,
          height = 178,
          frame_count = 24,
          animation_speed = 0.85,
          shift = util.by_pixel(-1,-24),
          scale = 0.5 / 2 / 2
        }
      },
      {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-2.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 46,
        height = 76,
        frame_count = 24,
        animation_speed = 0.85,
        shift = util.by_pixel(2,-8),
        scale = 0.5 / 2,
        hr_version =
        {
          filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-2.png",
          draw_as_glow = true,
          priority = "high",
          line_length = 6,
          width = 92,
          height = 152,
          frame_count = 24,
          animation_speed = 0.85,
          shift = util.by_pixel(2,-7.5),
          scale = 0.5 / 2 / 2
        }
      }
    }
PLORD_ironfist_hit_explosion.sound = {
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_04.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
		}
}




local PLORD_sentry_eye_entity_explosion = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_sentry_eye_entity_explosion")
PLORD_sentry_eye_entity_explosion.light = {intensity = 0.35,  size = 3, color = {r=1.0, g=0.7, b=0.8}}
PLORD_sentry_eye_entity_explosion.height = 0.1
PLORD_sentry_eye_entity_explosion.created_effect =
    {
      {
        type = "area",
        radius = 2,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "explosion"}
            }
          }
        }
      }
    }
PLORD_sentry_eye_entity_explosion.animations = {
      {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-1.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 44,
        height = 90,
        frame_count = 24,
        animation_speed = 0.85,
        shift = util.by_pixel(-1,-24),
        scale = 0.5 / 1.5,
        hr_version =
        {
          filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-1.png",
          draw_as_glow = true,
          priority = "high",
          line_length = 6,
          width = 88,
          height = 178,
          frame_count = 24,
          animation_speed = 0.85,
          shift = util.by_pixel(-1,-24),
          scale = 0.5 / 2 / 1.5
        }
      },
      {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-2.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 46,
        height = 76,
        frame_count = 24,
        animation_speed = 0.85,
        shift = util.by_pixel(2,-8),
        scale = 0.5 / 1.5,
        hr_version =
        {
          filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-2.png",
          draw_as_glow = true,
          priority = "high",
          line_length = 6,
          width = 92,
          height = 152,
          frame_count = 24,
          animation_speed = 0.85,
          shift = util.by_pixel(2,-7.5),
          scale = 0.5 / 2 / 1.5
        }
      }
    }
PLORD_sentry_eye_entity_explosion.sound = {
		aggregation = {max_count = 2, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/sentry_eye_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.15},
			{filename = prometheus_core.dir .. "sound/sentry_eye_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.15}
		}
}




local PLORD_uranfist_hit_explosion = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_uranfist_hit_explosion")
PLORD_uranfist_hit_explosion.light = {intensity = 0.35,  size = 5, color = {r=0.3, g=0.85, b=0.3}}
PLORD_uranfist_hit_explosion.height = 0.2
PLORD_uranfist_hit_explosion.created_effect =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-particle",
            repeat_count = 5,
            particle_name = "burner-inserter-metal-particle-medium",
            offset_deviation = { { -0.5, -0.4922 }, { 0.5, 0.4922 } },
            initial_height = 0.3,
            initial_height_deviation = 0.44,
            initial_vertical_speed = 0.058,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 3,
            particle_name = "burner-inserter-metal-particle-small",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.2,
            initial_height_deviation = 0.5,
            initial_vertical_speed = 0.08,
            initial_vertical_speed_deviation = 0.05,
            speed_from_center = 0.05,
            speed_from_center_deviation = 0.05
          },
          {
            type = "create-particle",
            repeat_count = 1,
            particle_name = "burner-inserter-mechanical-component-particle-medium",
            offset_deviation = { { -0.5, -0.5 }, { 0.5, 0.5 } },
            initial_height = 0.3,
            initial_height_deviation = 0.4,
            initial_vertical_speed = 0.06,
            initial_vertical_speed_deviation = 0.049,
            speed_from_center = 0.04,
            speed_from_center_deviation = 0.05
          }
        }
      }
    }
PLORD_uranfist_hit_explosion.animations = {
      {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-1.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 44,
        height = 90,
        frame_count = 24,
        animation_speed = 0.85,
        shift = util.by_pixel(-1,-24),
        scale = 0.5 / 2,
        tint = {r=0.2, g=1.0, b=0.45, a = 1.0},
        hr_version =
        {
          filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-1.png",
          draw_as_glow = true,
          priority = "high",
          line_length = 6,
          width = 88,
          height = 178,
          frame_count = 24,
          animation_speed = 0.85,
          shift = util.by_pixel(-1,-24),
          scale = 0.5 / 2 / 2,
          tint = {r=0.2, g=1.0, b=0.45, a = 1.0}
        }
      },
      {
        filename = "__base__/graphics/entity/small-explosion/small-explosion-2.png",
        draw_as_glow = true,
        priority = "high",
        line_length = 6,
        width = 46,
        height = 76,
        frame_count = 24,
        animation_speed = 0.85,
        shift = util.by_pixel(2,-8),
        scale = 0.5 / 2,
        tint = {r=0.2, g=1.0, b=0.45, a = 1.0},
        hr_version =
        {
          filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-2.png",
          draw_as_glow = true,
          priority = "high",
          line_length = 6,
          width = 92,
          height = 152,
          frame_count = 24,
          animation_speed = 0.85,
          shift = util.by_pixel(2,-7.5),
          scale = 0.5 / 2 / 2,
          tint = {r=0.2, g=1.0, b=0.45, a = 1.0}
        }
      }
    }
PLORD_uranfist_hit_explosion.sound = {
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
			{filename = prometheus_core.dir .. "sound/ironfist_explosion_04.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.3},
		}
}



local PLORD_plasmaphos_explosion = flib_utils.copy_prototype(data.raw["explosion"]["big-explosion"], "PLORD_plasmaphos_explosion")
PLORD_plasmaphos_explosion.light = {intensity = 0.5,  size = 20, color = {r=0.5, g=1.0, b=0.5}}
PLORD_plasmaphos_explosion.animations = {
    {
      filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion.png",
      draw_as_glow = true,
      flags = { "compressed" },
      width = 197,
      height = 245,
      frame_count = 47,
      line_length = 6,
      shift = {0.1875, -0.75},
      animation_speed = 0.5,
      scale = 2
    }
}
PLORD_plasmaphos_explosion.sound = {
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/phosphorus_plasma_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.75},
      {filename = prometheus_core.dir .. "sound/phosphorus_plasma_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.75},
      {filename = prometheus_core.dir .. "sound/phosphorus_plasma_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.75},
		}
}

local PLORD_plasmaphos_explosion_light = flib_utils.copy_prototype(data.raw["explosion"]["big-explosion"], "PLORD_plasmaphos_explosion_light")
PLORD_plasmaphos_explosion_light.animations = {
    {
      filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion_dummy.png",
      draw_as_glow = true,
      flags = { "compressed" },
      width = 197,
      height = 245,
      frame_count = 47,
      line_length = 6,
      shift = {0.1875, -0.75},
      animation_speed = 5
    }
}
PLORD_plasmaphos_explosion_light.light = {intensity = 0.85,  size = 50, color = {r=0.9, g=1.0, b=0.9}}
PLORD_plasmaphos_explosion_light.sound = nil

local PLORD_plasmaphos_explosion_light_green = flib_utils.copy_prototype(data.raw["explosion"]["big-explosion"], "PLORD_plasmaphos_explosion_light_green")
PLORD_plasmaphos_explosion_light_green.animations = {
    {
      filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion_dummy.png",
      draw_as_glow = true,
      flags = { "compressed" },
      width = 197,
      height = 245,
      frame_count = 47,
      line_length = 6,
      shift = {0.1875, -0.75},
      animation_speed = 2
    }
}
PLORD_plasmaphos_explosion_light_green.light = {intensity = 0.5,  size = 30, color = {r=0.9, g=1.0, b=0.5}}
PLORD_plasmaphos_explosion_light_green.sound = nil


local PLORD_plasmaphos_explosion_smoke = flib_utils.copy_prototype(data.raw["explosion"]["big-explosion"], "PLORD_plasmaphos_explosion_smoke")
PLORD_plasmaphos_explosion_smoke.animations = {
    {
      filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion_smoke.png",
      draw_as_glow = false,
      flags = { "compressed" },
      width = 197,
      height = 245,
      frame_count = 47,
      line_length = 6,
      shift = {0.1875, -0.75},
      animation_speed = 0.5,
      scale = 2
    }
}
PLORD_plasmaphos_explosion_smoke.sound = nil




local PLORD_venom_grenade_explosion = flib_utils.copy_prototype(data.raw["explosion"]["explosion-hit"], "PLORD_venom_grenade_explosion")
PLORD_venom_grenade_explosion.sound = {
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = "__base__/sound/creatures/Spiters_1_1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/creatures/Spiters_2_1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/creatures/Spiters_3_1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/creatures/Spiters_4_1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/creatures/Spiters_5_1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8}
		}
}
local function create_plasma_explosion(copy_name, copy_from, sound, light, sprite, scale, tint, anim_speed, multiplication, width, height, width2, height2)
	local type_expl = data.raw["explosion"]
	local copy_name = flib_utils.copy_prototype(type_expl[copy_from], "" .. copy_name .. "")
	copy_name.light = light or nil
	copy_name.animations =
		{
			filename = prometheus_core.dir .. "graphics/entity/" .. sprite .. ".png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = (width or 52) * multiplication,
			height = (height or 46) * multiplication,
			frame_count = 17,
			animation_speed = anim_speed or 0.5,
			shift = util.by_pixel(-1,2),
			tint = tint or nil,
			scale = (scale or 6),
			hr_version =
			{
				filename = prometheus_core.dir .. "graphics/entity/hr_" .. sprite ..".png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = (width2 or 102) * multiplication,
				height = (height2 or 88) * multiplication,
				frame_count = 17,
				animation_speed = anim_speed or 0.5,
				shift = util.by_pixel(-1,1.5),
				tint = tint or nil,
				scale = (scale or 6) * 0.5,

			}
		}
	copy_name.sound = sound or type_expl[copy_from].sound
	data:extend({copy_name})
	return
end
local function plasma_puff()
	return
		{
			aggregation = {max_count = 3, remove = true},
			allow_random_repeat = true,
			variations = 
			{
				{filename = "__base__/sound/fight/robot-explosion-1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-explosion-2.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-explosion-3.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-explosion-4.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-explosion-5.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
			}
		}
end
local function shock_puff()
	return
		{
			aggregation = {max_count = 3, remove = true},
			allow_random_repeat = true,
			variations = 
			{
				{filename = "__base__/sound/fight/robot-selfdestruct-01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-selfdestruct-02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-selfdestruct-03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
			}
		}
end
local plasma_puff_light = {intensity = 0.57,  size = 60, color = {r=0.25, g=0.3, b=0.9}}
local shock_puff_light = {intensity = 0.47,  size = 15, color = {r=0.87, g=0.9, b=0.99}}
create_plasma_explosion("PLORD_plasma_grenade_explosion_hydroxygen", "explosion", plasma_puff(), plasma_puff_light, "plasma_explosion", 3, tint, anim_speed, 2)
create_plasma_explosion("PLORD_shock_explosion", "explosion", shock_puff(), shock_puff_light, "shock_explosion", 2.5, tint, 2, 1)

local PLORD_discharge_beam = flib_utils.copy_prototype(data.raw["beam"]["electric-beam"], "PLORD_discharge_beam")
PLORD_discharge_beam.width = 1
PLORD_discharge_beam.action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					{
						type = "damage",
						damage = { amount = 25, type = "electric"}
					},
					{
						type = "push-back",
						distance = 1
					}
				}
			}
		}

local pellets_sound_1 = {
			{filename = prometheus_core.dir .. "sound/pellets_grenade_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.55},
			{filename = prometheus_core.dir .. "sound/pellets_grenade_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.55},
		}
local pellets_sound_2 = {
			{filename = "__base__/sound/fight/pump-shotgun-1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-2.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-3.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-4.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-5.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
		}
local pellets_sound_3 = {
			{filename = "__base__/sound/fight/pump-shotgun-1.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-2.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-3.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-4.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
			{filename = "__base__/sound/fight/pump-shotgun-5.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
		}

local PLORD_pellets_grenade_explosion = flib_utils.copy_prototype(data.raw["explosion"]["explosion-hit"], "PLORD_pellets_grenade_explosion")
PLORD_pellets_grenade_explosion.animations[1].scale = 2
PLORD_pellets_grenade_explosion.sound = {
		aggregation = {max_count = 4, remove = true},
		allow_random_repeat = true,
		variations = pellets_sound_2,
		audible_distance_modifier = 0.7,
	}
local PLORD_pellets_piercing_grenade_explosion = flib_utils.copy_prototype(data.raw["explosion"]["explosion-hit"], "PLORD_pellets_piercing_grenade_explosion")
PLORD_pellets_piercing_grenade_explosion.animations[1].scale = 2
PLORD_pellets_piercing_grenade_explosion.sound = {
		aggregation = {max_count = 4, remove = true},
		allow_random_repeat = true,
		variations = pellets_sound_3,
		audible_distance_modifier = 0.7,
	}
	if (mods["MIRV"]) then
			nk_fasfix_mirv =
			{
				{
					filename = "__base__/graphics/entity/nuke-explosion/nuke-explosion-1.png",
					width_in_frames = 5,
					height_in_frames = 5
				},
				{
					filename = "__base__/graphics/entity/nuke-explosion/nuke-explosion-2.png",
					width_in_frames = 5,
					height_in_frames = 5
				},
				{
					filename = "__base__/graphics/entity/nuke-explosion/nuke-explosion-3.png",
					width_in_frames = 5,
					height_in_frames = 5
				},
				{
					filename = "__base__/graphics/entity/nuke-explosion/nuke-explosion-4.png",
					width_in_frames = 5,
					height_in_frames = 5
				}
			}
			nk_fasfix_mirv_hr =
			{
				{
					filename = "__base__/graphics/entity/nuke-explosion/hr-nuke-explosion-1.png",
					width_in_frames = 5,
					height_in_frames = 5
				},
				{
					filename = "__base__/graphics/entity/nuke-explosion/hr-nuke-explosion-2.png",
					width_in_frames = 5,
					height_in_frames = 5
				},
				{
					filename = "__base__/graphics/entity/nuke-explosion/hr-nuke-explosion-3.png",
					width_in_frames = 5,
					height_in_frames = 5
				},
				{
					filename = "__base__/graphics/entity/nuke-explosion/hr-nuke-explosion-4.png",
					width_in_frames = 5,
					height_in_frames = 5
				}
			}
		else 
			nk_fasfix_mirv = data.raw["explosion"]["nuke-explosion"].animations.stripes
			nk_fasfix_mirv_hr = data.raw["explosion"]["nuke-explosion"].animations.hr_version.stripes
	end
local PLORD_thermobaric_explosion = flib_utils.copy_prototype(data.raw["explosion"]["big-artillery-explosion"], "PLORD_thermobaric_explosion")
PLORD_thermobaric_explosion.animations =
	{
		width = 316,
		height = 360,
		frame_count = 100,
		draw_as_glow = true,
		priority = "very-low",
		flags = {"compressed"},
		shift = util.by_pixel(1, -123),
		animation_speed = 0.7,
		scale = 1.35,
		dice_y = 5,
		stripes = nk_fasfix_mirv,
		hr_version =
		{
			width = 628,
			height = 720,
			frame_count = 100,
			draw_as_glow = true,
			priority = "very-low",
			flags = {"linear-magnification"},
			shift = util.by_pixel(0.5, -122.5),
			animation_speed = 0.7,
			scale = 1.35 * 0.5,
			dice_y = 5,
			stripes = nk_fasfix_mirv_hr
		}
	}
PLORD_thermobaric_explosion.sound = 
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_04.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
		},
		audible_distance_modifier = 2,
	}
local PLORD_thermobaric_explosion_bigass = flib_utils.copy_prototype(data.raw["explosion"]["big-artillery-explosion"], "PLORD_thermobaric_explosion_bigass")
PLORD_thermobaric_explosion_bigass.render_layer = "projectile"
PLORD_thermobaric_explosion_bigass.animations[1].animation_speed = 0.35
PLORD_thermobaric_explosion_bigass.animations[1].scale = 1.25
PLORD_thermobaric_explosion_bigass.animations[1].shift = {1, -6}
PLORD_thermobaric_explosion_bigass.animations[1].flags = nil
PLORD_thermobaric_explosion_bigass.sound = nil

data:extend({PLORD_he_grenade_explosion, PLORD_ironfist_hit_explosion, PLORD_uranfist_hit_explosion, PLORD_plasmaphos_explosion, PLORD_sentry_eye_entity_explosion, PLORD_plasmaphos_explosion_light, PLORD_plasmaphos_explosion_light_green, PLORD_plasmaphos_explosion_smoke, PLORD_venom_grenade_explosion, PLORD_discharge_beam, PLORD_thermobaric_explosion, PLORD_thermobaric_explosion_bigass, PLORD_pellets_grenade_explosion,
PLORD_pellets_piercing_grenade_explosion})

local PLORD_thermobaric_explosion_light = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_thermobaric_explosion"], "PLORD_thermobaric_explosion_light")
PLORD_thermobaric_explosion_light.animations.hr_version = nil
PLORD_thermobaric_explosion_light.animations.stripes[1].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
PLORD_thermobaric_explosion_light.animations.stripes[2].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
PLORD_thermobaric_explosion_light.animations.stripes[3].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
PLORD_thermobaric_explosion_light.animations.stripes[4].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
PLORD_thermobaric_explosion_light.animations.tint = {r=0,g=0,b=0,a=0}
PLORD_thermobaric_explosion_light.animations.animation_speed= 1
PLORD_thermobaric_explosion_light.light = {intensity = 0.5, size = 100, color = {r = 0.8, g = 0.6, b = 0.2}}
data:extend({PLORD_thermobaric_explosion_light})

data:extend({
	{
		type = "sticker",
		name = "PLORD_incendiary_fire_sticker",
		flags = {"not-on-map"},

		animation =
		{
			filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
			line_length = 8,
			width = 60,
			height = 118,
			frame_count = 25,
			blend_mode = "normal",
			animation_speed = 1,
			scale = 0.35,
			tint = { r = 0.5, g = 0.5, b = 0.5, a = 0.18 }, --{ r = 1, g = 1, b = 1, a = 0.35 },
			shift = game_core.math3d.vector2.mul({-0.078125, -1.8125}, 0.1),
			draw_as_glow = true
		},

		duration_in_ticks = 30 * 60,
		damage_interval = 10,
		target_movement_modifier = 0.8,
		damage_per_tick = { amount = 3 * 100 / 60, type = "fire" },
		spread_fire_entity = "fire-flame-on-tree",
		fire_spread_cooldown = 10,
		fire_spread_radius = 0.75
	},
	{
		type = "smoke-with-trigger",
		name = "PLORD_40mm_grenade_poison_cloud_visual_dummy",
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		particle_count = 14,
		particle_spread = { 1.6 * 1.05, 1.6 * 0.6 * 1.05 },
		particle_distance_scale_factor = 0.5,
		particle_scale_factor = { 1, 0.707 },
		particle_duration_variation = 60 * 3,
		wave_speed = { 0.5 / 80, 0.5 / 60 },
		wave_distance = { 1, 0.5 },
		spread_duration_variation = 300 - 20,

		render_layer = "object",

		affected_by_wind = false,
		cyclic = true,
		duration = 40 * 20 + 5,
		fade_away_duration = 3 * 60,
		spread_duration = (200 - 20) / 2 ,
		color = {r = 0.014, g = 0.358, b = 0.395, a = 0.322},

		animation = data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"].animation,
		working_sound = data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"].working_sound
	},
	{
		type = "smoke-with-trigger",
		name = "PLORD_40mm_grenade_poison_cloud",
		localised_name = {"", {"entity-name.poison-cloud"}},
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		particle_count = 16,
		particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
		particle_distance_scale_factor = 2.5,
		particle_scale_factor = { 1, 0.707 },
		wave_speed = { 1/80, 1/60 },
		wave_distance = { 0.3, 0.2 },
		spread_duration_variation = 30,
		particle_duration_variation = 30 * 3,
		render_layer = "object",

		affected_by_wind = false,
		cyclic = true,
		duration = 40 * 20,
		fade_away_duration = 1.5 * 60,
		spread_duration = 20,
		color = {r = 0.239, g = 0.875, b = 0.992, a = 0.690},

		animation = data.raw["smoke-with-trigger"]["poison-cloud"].animation,
		created_effect =
		{
			{
				type = "cluster",
				cluster_count = 15,
				distance = 4,
				distance_deviation = 5,
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-smoke",
							show_in_tooltip = false,
							entity_name = "PLORD_40mm_grenade_poison_cloud_visual_dummy",
							initial_height = 0
						},
						{
							type = "play-sound",
							sound = game_core.base_ent_sounds_path.poison_capsule_explosion(0.15)
						}
					}
				}
			},
			{
				type = "cluster",
				cluster_count = 12,
				distance = 4 * 1.1,
				distance_deviation = 2,
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-smoke",
							show_in_tooltip = false,
							entity_name = "PLORD_40mm_grenade_poison_cloud_visual_dummy",
							initial_height = 0
						}
					}
				}
			}
		},
		action =
		{
			type = "direct",
			action_delivery =
			{
				type = "instant",
				target_effects =
				{
					type = "nested-result",
					action =
					{
						type = "area",
						radius = 6,
						entity_flags = {"breaths-air"},
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								damage = { amount = 7, type = "poison"}
							}
						}
					}
				}
			}
		},
		action_cooldown = 20
	},
	{
		type = "sticker",
		name = "PLORD_slowdown_sticker_1",
		flags = {},
		animation = data.raw["sticker"]["slowdown-sticker"].animation,
		duration_in_ticks = 30 * 60,
		target_movement_modifier = 0.15
	},
	{
		type = "sticker",
		name = "PLORD_slowdown_sticker_2",
		animation = data.raw["sticker"]["slowdown-sticker"].animation,
		duration_in_ticks = 15 * 60,
		target_movement_modifier = 0.5
	},
	{
		type = "sticker",
		name = "PLORD_slowdown_sticker_3",
		animation = data.raw["sticker"]["slowdown-sticker"].animation,
		duration_in_ticks = 25 * 60,
		target_movement_modifier = 0.3
	},
	{
		type = "sticker",
		name = "PLORD_slowdown_sticker_acidic",
		animation =
		{
			filename = "__base__/graphics/entity/slowdown-sticker/slowdown-sticker.png",
			priority = "extra-high",
			line_length = 5,
			width = 22,
			height = 24,
			frame_count = 50,
			animation_speed = 0.5,
			tint = {r=0.7, g=1, b=0.1, a = 0.694},
			shift = util.by_pixel (2,-1),
			hr_version =
			{
				filename = "__base__/graphics/entity/slowdown-sticker/hr-slowdown-sticker.png",
				line_length = 5,
				width = 42,
				height = 48,
				frame_count = 50,
				animation_speed = 0.5,
				tint = {r=0.7, g=1, b=0.1, a = 0.694},
				shift = util.by_pixel(2, -0.5),
				scale = 0.5
			}
		},
		duration_in_ticks = 40 * 60,
		target_movement_modifier = 0.75
	},
	{
		type = "explosion",
		name = "PLORD_acidic_explosion",
		localised_name = {"entity-name.big-explosion"},
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map", "hidden"},
		subgroup = "explosions",
		animations = 
		{
			filename = prometheus_core.dir .. "graphics/entity/big_explosion_grey.png",
			draw_as_glow = true,
			flags = { "compressed" },
			width = 197,
			height = 245,
			frame_count = 47,
			line_length = 6,
			shift = {0.1875, -0.75},
			animation_speed = 0.5,
			scale = 1.4,
			tint = {r=0.7, g=0.7, b=0.15}
		},
		--light = {intensity = 1, size = 50, color = {r=0.2, g=1.0, b=0.5}},
		sound =
			{
				{
					filename = prometheus_core.dir .. "sound/acidic_explosion_01.ogg",
					volume = 0.75
				},
			},
	},
	{
		type = "explosion",
		name = "PLORD_flare_explosion",
		localised_name = {"entity-name.big-explosion"},
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map", "hidden"},
		subgroup = "explosions",
		animations = 
		{
			filename = prometheus_core.dir .. "graphics/entity/fake_explosion.png",
			draw_as_glow = true,
			flags = { "compressed" },
			width = 197,
			height = 245,
			frame_count = 47,
			line_length = 6,
			shift = {0.1875, -0.75},
			animation_speed = 0.005,
			scale = 1.25,
			tint = {r=0.0, g=0.0, b=0.0, a = 0.0}
		},
		light = {intensity = 1, size = 100, color = {r=1.0, g=1.0, b=0.7}}
	},


	{
		type = "sticker",
		name = "PLORD_plasma_debuff_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 60,
		damage_interval = 5,
		target_movement_modifier = 0.8,
		damage_per_tick = { amount = 7 * 100 / 60, type = "overheat" },
		spread_fire_entity = "fire-flame-on-tree",
		fire_spread_cooldown = 10,
		fire_spread_radius = 1.25
	},
  {
		type = "sticker",
		name = "PLORD_plasma_phosphor_debuff_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 60,
		damage_interval = 5,
		target_movement_modifier = 0.7,
		damage_per_tick = { amount = 10 * 100 / 60 / 4, type = "overheat" }
	},
  {
		type = "sticker",
		name = "PLORD_plasma_phosphor_toxical_debuff_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 180,
		damage_interval = 5,
		target_movement_modifier = 0.9,
		damage_per_tick = { amount = 1 * 100 / 60 / 4, type = "poison" }
	},
	{
		type = "explosion",
		name = "PLORD_stasis_explosion",
		localised_name = {"entity-name.explosion"},
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map", "hidden"},
		subgroup = "explosions",
		animations =
		{
			filename = prometheus_core.dir .. "graphics/entity/stasis_explosion.png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 64,
			height = 64,
			frame_count = 12,
			animation_speed = 1,
			shift = util.by_pixel(-1,2),
			scale = 3,
			hr_version =
			{
				filename = prometheus_core.dir .. "graphics/entity/hr_stasis_explosion.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 128,
				height = 128,
				frame_count = 12,
				animation_speed = 1,
				shift = util.by_pixel(-1,1.5),
				scale = 3 * 0.5,
			},
		},
		light = {intensity = 0.5, size = 30, color = {r=0.25, g=0.94, b=0.84}},
		sound = {
			aggregation = {max_count = 3, remove = true},
			allow_random_repeat = true,
			variations = 
			{
				{filename = prometheus_core.dir .. "sound/stasis_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.9},
				{filename = prometheus_core.dir .. "sound/stasis_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.9},
				{filename = prometheus_core.dir .. "sound/stasis_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.9},
			}
		}
	},
	{
		type = "explosion",
		name = "PLORD_stasis_explosion_2",
		localised_name = {"entity-name.explosion"},
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		flags = {"not-on-map", "hidden"},
		subgroup = "explosions",
		animations =
		{
			filename = prometheus_core.dir .. "graphics/entity/stasis_explosion.png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 64,
			height = 64,
			frame_count = 12,
			animation_speed = 0.5,
			shift = util.by_pixel(-1,2),
			scale = 6,
			hr_version =
			{
				filename = prometheus_core.dir .. "graphics/entity/hr_stasis_explosion.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 128,
				height = 128,
				frame_count = 12,
				animation_speed = 0.5,
				shift = util.by_pixel(-1,1.5),
				scale = 6 * 0.5,
			},
		},
		light = {intensity = 0.5, size = 30, color = {r=0.25, g=0.94, b=0.84}},
	},
	{
		type = "sticker",
		name = "PLORD_stasis_stun_sticker",
		animation =
		{
			filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
			draw_as_glow = true,
			priority = "extra-high",
			line_length = 5,
			width = 16,
			height = 18,
			frame_count = 50,
			animation_speed = 1,
			tint = {r=0.25, g=0.94, b=0.84, a = 0.25},
			scale = 2,
			shift = util.by_pixel (2,0),
			hr_version =
			{
				filename = "__base__/graphics/entity/acid-sticker/hr-acid-sticker.png",
				draw_as_glow = true,
				line_length = 5,
				width = 30,
				height = 34,
				frame_count = 50,
				animation_speed = 1,
				tint = {r=0.25, g=0.94, b=0.84, a = 0.25},
				shift = util.by_pixel(1.5, 0),
				scale = 2 * 0.5
			}
		},
		duration_in_ticks = 15 * 60,
		target_movement_modifier = 0
	},
	{
		type = "sticker",
		name = "PLORD_stasis_stun_sticker_2",
		duration_in_ticks = 40 * 60,
		target_movement_modifier = 0
	},

	{
		type = "explosion",
		name = "PLORD_discharge_explosion",
		localised_name = {"entity-name.explosion"},
		icon = "__base__/graphics/item-group/effects.png",
		icon_size = 64,
		animations = 
		{
			filename = prometheus_core.dir .. "graphics/entity/stasis_explosion.png",
			priority = "low",
			line_length = 6,
			width = 64,
			height = 64,
			frame_count = 12,
			animation_speed = 1,
			tint = {r=0,g=0,b=0,a=0},
			shift = util.by_pixel(-1,2),
			scale = 0,
		},
		flags = {"not-on-map", "hidden"},
		subgroup = "explosions",
		sound = {
			aggregation = {max_count = 3, remove = true},
			variations = 
			{
				{filename = "__base__/sound/fight/pulse.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.7},
			}
		}
	},
	{
		type = "sticker",
		name = "PLORD_discharge_stun",
		flags = {"not-on-map"},
		duration_in_ticks = 2 * 60,
		target_movement_modifier = 0
	},
	{
		type = "sticker",
		name = "PLORD_shock_stun",
		flags = {"not-on-map"},
		duration_in_ticks = 0.12 * 60,
		target_movement_modifier = 0.15
	},
	{
		type = "sticker",
		name = "PLORD_ironfist_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 10 * 30,
		damage_interval = 5,
		target_movement_modifier_from = 0.97,
		damage_per_tick = { amount = 5 / 7, type = "posttraumatic" }
	},
	{
		type = "sticker",
		name = "PLORD_uranfist_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 10 * 20,
		damage_interval = 5,
		target_movement_modifier_from = 0.94,
		damage_per_tick = { amount = 5 / 1, type = "posttraumatic" }
	},
	{
		type = "sticker",
		name = "PLORD_venom_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 10 * 60,
		damage_interval = 5,
		target_movement_modifier_from = 0.3,
		target_movement_modifier_from = 0.7,
		damage_per_tick = { amount = 6 * 100 / 60, type = "poison" }
	},
	{
		type = "sticker",
		name = "PLORD_venom_sticker_2",
		flags = {"not-on-map"},
		duration_in_ticks = 20 * 60,
		damage_interval = 10,
		damage_per_tick = { amount = 3 * 100 / 60, type = "poison" }
	},
	{
		type = "sticker",
		name = "PLORD_venom_sticker_3",
		flags = {"not-on-map"},
		duration_in_ticks = 150 * 60,
		damage_interval = 15,
		damage_per_tick = { amount = 2 * 100 / 60, type = "poison" },
		animation =
		{
			filename = "__base__/graphics/entity/acid-sticker/acid-sticker.png",
			draw_as_glow = false,
			priority = "extra-high",
			line_length = 5,
			width = 16,
			height = 18,
			frame_count = 50,
			animation_speed = 1,
			tint = {r=0.55, g=0.64, b=0.54, a = 0.25},
			scale = 1,
			shift = util.by_pixel (2,0),
			hr_version =
			{
				filename = "__base__/graphics/entity/acid-sticker/hr-acid-sticker.png",
				draw_as_glow = false,
				line_length = 5,
				width = 30,
				height = 34,
				frame_count = 50,
				animation_speed = 1,
				tint = {r=0.55, g=0.64, b=0.54, a = 0.25},
				shift = util.by_pixel(1.5, 0),
				scale = 1 * 0.5
			}
		}
	},
	{
		type = "explosion",
		name = "PLORD_thermobaric_explosion_impact_stage_1",
		localised_name = {"entity-name.explosion"},
		icon = "__base__/graphics/item-group/effects.png",
		scale_in_duration = 0.5,
		scale_out_duration = 4,
		scale_end = 8,
		icon_size = 64,
		animations = 
		{
			filename = prometheus_core.dir .. "graphics/entity/thermobaric_impact_wave.png",
			draw_as_glow = true,
			priority = "low",
			line_length = 6,
			width = 128,
			height = 128,
			frame_count = 6,
			animation_speed = 1,
			shift = {0, -4},
			scale = 4,
			hr_version = 
			{
				filename = prometheus_core.dir .. "graphics/entity/hr_thermobaric_impact_wave.png",
				draw_as_glow = true,
				priority = "low",
				line_length = 6,
				width = 256,
				height = 256,
				frame_count = 6,
				animation_speed = 1,
				shift = {0, -4},
				scale = 4 * 0.5,
			}
		},
		flags = {"not-on-map", "hidden"},
		subgroup = "explosions",
	},
	{
		type = "sticker",
		name = "PLORD_thermobaric_contusion",
		flags = {"not-on-map"},
		damage_interval = 10,
		damage_per_tick = { amount = 1 * 100 / 60, type = "posttraumatic" },
		duration_in_ticks = 30 * 60,
		target_movement_modifier_from = 0.2,
		target_movement_modifier_to = 0.75
	},
	{
		type = "sticker",
		name = "PLORD_thermobaric_contusion_initial",
		flags = {"not-on-map"},
		duration_in_ticks = 1.5 * 60,
		target_movement_modifier_from = 0,
		target_movement_modifier_to = 0.2
	},
	{
		type = "sticker",
		name = "PLORD_thermobaric_fire_sticker",
		flags = {"not-on-map"},

		animation =
		{
			filename = "__base__/graphics/entity/fire-flame/fire-flame-13.png",
			line_length = 8,
			width = 60,
			height = 118,
			frame_count = 25,
			blend_mode = "normal",
			animation_speed = 1,
			scale = 0.35,
			tint = { r = 0.5, g = 0.5, b = 0.8, a = 0.18 },
			shift = game_core.math3d.vector2.mul({-0.078125, -1.8125}, 0.1),
			draw_as_glow = true
		},

		duration_in_ticks = 10 * 60,
		damage_interval = 10,
		target_movement_modifier = 0.8,
		damage_per_tick = { amount = 2 * 100 / 60, type = "fire" },
		spread_fire_entity = "fire-flame-on-tree",
		fire_spread_cooldown = 10,
		fire_spread_radius = 3.75
	},
	{
		type = "sticker",
		name = "PLORD_promethium_sticker",
		flags = {"not-on-map"},
		damage_interval = 10,
		damage_per_tick = {amount = 1 * 100 / 60, type = "radiation"},
		duration_in_ticks = 40 * 60
	},
	{
		type = "sticker",
		name = "PLORD_promethium_sticker_2",
		flags = {"not-on-map"},
		damage_interval = 10,
		damage_per_tick = {amount = 0.8 * 100 / 60, type = "poison"},
		duration_in_ticks = 40 * 60
	},
})
local PLORD_thermobaric_explosion_impact_stage_2 = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_thermobaric_explosion_impact_stage_1"], "PLORD_thermobaric_explosion_impact_stage_2")
PLORD_thermobaric_explosion_impact_stage_2.animations.scale = 8
PLORD_thermobaric_explosion_impact_stage_2.animations.animation_speed = 0.6
PLORD_thermobaric_explosion_impact_stage_2.animations.shift = {0, -4}
PLORD_thermobaric_explosion_impact_stage_2.animations.hr_version.scale = 8 * 0.5
PLORD_thermobaric_explosion_impact_stage_2.animations.hr_version.animation_speed = 0.6
PLORD_thermobaric_explosion_impact_stage_2.animations.hr_version.shift = {0, -4}

local PLORD_thermobaric_explosion_impact_stage_3 = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_thermobaric_explosion_impact_stage_1"], "PLORD_thermobaric_explosion_impact_stage_3")
PLORD_thermobaric_explosion_impact_stage_3.animations.scale = 10
PLORD_thermobaric_explosion_impact_stage_3.animations.animation_speed = 0.4
PLORD_thermobaric_explosion_impact_stage_3.animations.shift = {0, -5}
PLORD_thermobaric_explosion_impact_stage_3.animations.hr_version.scale = 10 * 0.5
PLORD_thermobaric_explosion_impact_stage_3.animations.hr_version.animation_speed = 0.4
PLORD_thermobaric_explosion_impact_stage_3.animations.hr_version.shift = {0, -5}

local PLORD_thermobaric_explosion_impact_stage_4 = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_thermobaric_explosion_impact_stage_1"], "PLORD_thermobaric_explosion_impact_stage_4")
PLORD_thermobaric_explosion_impact_stage_4.animations.scale = 15
PLORD_thermobaric_explosion_impact_stage_4.animations.animation_speed = 0.3
PLORD_thermobaric_explosion_impact_stage_4.animations.shift = {0, -6}
PLORD_thermobaric_explosion_impact_stage_4.animations.hr_version.scale = 15 * 0.5
PLORD_thermobaric_explosion_impact_stage_4.animations.hr_version.animation_speed = 0.3
PLORD_thermobaric_explosion_impact_stage_4.animations.hr_version.shift = {0, -6}

local PLORD_thermobaric_explosion_impact_stage_5 = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_thermobaric_explosion_impact_stage_1"], "PLORD_thermobaric_explosion_impact_stage_5")
PLORD_thermobaric_explosion_impact_stage_5.animations.scale = 30
PLORD_thermobaric_explosion_impact_stage_5.animations.animation_speed = 0.3
PLORD_thermobaric_explosion_impact_stage_5.animations.tint = {r=0.2, g=0.2, b=0.2, a=0.2}
PLORD_thermobaric_explosion_impact_stage_5.animations.shift = {0, -7}
PLORD_thermobaric_explosion_impact_stage_5.animations.hr_version.scale = 30 * 0.5
PLORD_thermobaric_explosion_impact_stage_5.animations.hr_version.animation_speed = 0.3
PLORD_thermobaric_explosion_impact_stage_5.animations.hr_version.tint = {r=0.2, g=0.2, b=0.2, a=0.2}
PLORD_thermobaric_explosion_impact_stage_5.animations.hr_version.shift = {0, -7}


data:extend({PLORD_thermobaric_explosion_impact_stage_2, PLORD_thermobaric_explosion_impact_stage_3, PLORD_thermobaric_explosion_impact_stage_4, PLORD_thermobaric_explosion_impact_stage_5})

local PLORD_flare_explosion_2 = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_flare_explosion"], "PLORD_flare_explosion_2")
PLORD_flare_explosion_2.light.intensity = 0.8
PLORD_flare_explosion_2.animations.animation_speed = 0.1
local PLORD_flare_explosion_3 = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_flare_explosion"], "PLORD_flare_explosion_3")
PLORD_flare_explosion_3.animations.animation_speed = 0.017
PLORD_flare_explosion_3.light.intensity = 0.5
data:extend({PLORD_flare_explosion_2, PLORD_flare_explosion_3})

data:extend({
	game_core.fireutil.add_basic_fire_graphics_and_effects_definitions
	{
		type = "fire",
		name = "PLORD_incendary_fire_flame",
		localised_name = {"", {"entity-name.fire-flame"}},
		flags = {"placeable-off-grid", "not-on-map"},
		damage_per_tick = {amount = 3 / 60, type = "fire"},
		maximum_damage_multiplier = 6,
		damage_multiplier_increase_per_added_fuel = 1,
		damage_multiplier_decrease_per_tick = 0.005,
	
		spawn_entity = "fire-flame-on-tree",
	
		spread_delay = 300,
		spread_delay_deviation = 180,
		maximum_spread_count = 100,
	
		emissions_per_second = 0.005,
	
		initial_lifetime = 500,
		lifetime_increase_by = 150,
		lifetime_increase_cooldown = 4,
		maximum_lifetime = 500 * 2,
		delay_between_initial_flames = 10,
	},
	{
		type = "fire",
		name = "PLORD_thermobaric_fire_flame",
		localised_name = {"", {"entity-name.fire-flame"}},
		flags = {"placeable-off-grid", "not-on-map"},
		damage_per_tick = {amount = 1 / 60, type = "fire"},
		maximum_damage_multiplier = 6,
		damage_multiplier_increase_per_added_fuel = 1,
		damage_multiplier_decrease_per_tick = 0.005,
	
		spawn_entity = "fire-flame-on-tree",
	
		spread_delay = 300,
		spread_delay_deviation = 180,
		maximum_spread_count = 100,
	
		emissions_per_second = 0.005,
	
		initial_lifetime = 1000,
		lifetime_increase_by = 150,
		lifetime_increase_cooldown = 4,
		maximum_lifetime = 1000 * 2,
		delay_between_initial_flames = 10,
	}
})

local PLORD_thermobaric_fire_flame = flib_utils.copy_prototype(data.raw["fire"]["PLORD_incendary_fire_flame"], "PLORD_thermobaric_fire_flame")
PLORD_thermobaric_fire_flame.damage_per_tick = {amount = 1 / 60, type = "fire"}
PLORD_thermobaric_fire_flame.maximum_damage_multiplier = 7
PLORD_thermobaric_fire_flame.initial_lifetime = 1000
PLORD_thermobaric_fire_flame.maximum_lifetime = 1000 * 2
PLORD_thermobaric_fire_flame.emissions_per_second = 0.01
data:extend({PLORD_thermobaric_fire_flame})
local thermobaric_fire_tint = {r=0.43,g=0.6,b=1,a=0.6}
for i = 1, 13 do data.raw["fire"]["PLORD_thermobaric_fire_flame"].pictures[i].tint = thermobaric_fire_tint end

prometheus_core.generateFuncCallFromArray(prometheus_core.create_40mm_ammo, prometheus_grenade_types)
prometheus_core.generateFuncCallFromArray(prometheus_core.apply_resistance, prometheus_resistances_table)


if settings.startup["PLORD_make_spawns_breaths_air"].value then 
	if not (mods["RampantFixed"]) and not (not (mods["Rampant"])) then
			prometheus_core.apply_flags_to_entity(false, "unit-spawner", "spawner", ent_class, lvl, "breaths-air")
	end
end



require("prototypes/data_spidertron")
require("prototypes/data_tank")
require("prototypes/data_equip")

prometheus_core.generateFuncCallFromArray(cyrus_core.create_cyrus_launcher, cyrus_launcher_equip_types)

data:extend({
	{
		type = "technology",
		name = "PLORD_prometheus_gl",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/prometheus.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_grenade_launcher_prometheus"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_pellets"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_sentry_eye"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_iron_fist"
			}
		},
		prerequisites = {"military-2", "military-science-pack", "plastics"},
		unit =
		{
			count = 130,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 25
		},
		order = "d-e-a"
	},
	{
		type = "technology",
		name = "PLORD_grenade_turret",
		localised_name = {"", {"item-name.PLORD_gl_40mm_turret"}},
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/gl_turret.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_gl_40mm_turret"
			}
		},
		prerequisites = {"PLORD_prometheus_gl", "military-3", "explosives"},
		unit =
		{
			count = 75,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 100
		},
		order = "z-z-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_flares",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_flares.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_lighted"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_flare"
			}
		},
		prerequisites = {"PLORD_prometheus_gl", "optics"},
		unit =
		{
			count = 25,
			ingredients =
			{
				{"military-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 25
		},
		order = "z-x-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_cluster_he",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_cluster_he.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_cluster"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_he"
			}
		},
		prerequisites = {"military-4", "PLORD_prometheus_gl", "cliff-explosives"},
		unit =
		{
			count = 120,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_pellets_piercing",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_pellets_piercing.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_pellets_piercing"
			}
		},
		prerequisites = {"military-4", "PLORD_prometheus_gl", "cliff-explosives"},
		unit =
		{
			count = 70,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 20
		},
		order = "z-z-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_incendiary",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_incendiary.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_incendiary"
			}
		},
		prerequisites = {"military-4", "PLORD_grenade_turret", "PLORD_40mm_cluster_he"},
		unit =
		{
			count = 70,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_gl_uranium_fist",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_uranium_fist.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_uranium_fist"
			}
		},
		prerequisites = {"uranium-ammo", "PLORD_grenade_turret", "PLORD_40mm_cluster_he"},
		unit =
		{
			count = 750,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 55
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_gl_uranium_frag",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_uranium_frag.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_uranium_frag"
			}
		},
		prerequisites = {"uranium-ammo", "PLORD_grenade_turret", "PLORD_40mm_cluster_he"},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_gl_promethium",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_promethium.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_promethium"
			}
		},
		prerequisites = {"kovarex-enrichment-process", "PLORD_grenade_turret", "PLORD_40mm_gl_uranium_frag"},
		unit =
		{
			count = 1000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_shock",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_shock.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_shock"
			}
		},
		prerequisites = {"military-4", "PLORD_grenade_turret", "PLORD_40mm_incendiary"},
		unit =
		{
			count = 70,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 45
		},
		order = "z-z-b-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_bio_chemicals",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_bio_chemicals.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_acidic"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_poison"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_venom"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_stun"
			}
		},
		prerequisites = {"military-4", "PLORD_40mm_cluster_he", "PLORD_40mm_incendiary", "PLORD_grenade_turret"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"utility-science-pack", 1},
				{"chemical-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-e"
	},
	{
		type = "technology",
		name = "PLORD_40mm_thermobaric",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_thermobaric.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_thermobaric"
			}
		},
		prerequisites = {"military-4", "PLORD_40mm_bio_chemicals", "PLORD_grenade_turret"},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 40
		},
		order = "z-z-e-f"
	},
	{
		type = "technology",
		name = "PLORD_40mm_newphysics",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_newphysics.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_plasma_hydroxygen"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_stasis"
			},
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_discharge"
			},
		},
		prerequisites = {"military-4", "PLORD_40mm_bio_chemicals", "PLORD_grenade_turret"},
		unit =
		{
			count = 200,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 1},
				{"utility-science-pack", 1},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-f"
	},
	{
		type = "technology",
		name = "PLORD_40mm_plasma_phosphor",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/40mm_plasma_phosphor.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_plasma_phosphorus"
			}
		},
		prerequisites = {"military-4", "PLORD_40mm_newphysics", "PLORD_grenade_turret"},
		unit =
		{
			count = 60,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"military-science-pack", 1},
				{"chemical-science-pack", 2},
				{"utility-science-pack", 2},
				{"logistic-science-pack", 1}
			},
			time = 60
		},
		order = "z-z-f-g"
	}
})

table.insert(data.raw["technology"]["electronics"].effects, {type = "unlock-recipe", recipe = "PLORD_sentry_eye_microunit"})
table.insert(data.raw["technology"]["electronics"].effects, {type = "unlock-recipe", recipe = "PLORD_sentry_eye_entity"})
table.insert(data.raw["technology"]["stronger-explosives-1"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.07})
table.insert(data.raw["technology"]["stronger-explosives-2"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.07})
table.insert(data.raw["technology"]["stronger-explosives-3"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.10})
table.insert(data.raw["technology"]["stronger-explosives-4"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.10})
table.insert(data.raw["technology"]["stronger-explosives-5"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.15})
table.insert(data.raw["technology"]["stronger-explosives-6"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.17})
table.insert(data.raw["technology"]["stronger-explosives-7"].effects, {type = "ammo-damage", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.17})

table.insert(data.raw["technology"]["weapon-shooting-speed-4"].effects, {type = "gun-speed", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.25})
table.insert(data.raw["technology"]["weapon-shooting-speed-5"].effects, {type = "gun-speed", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.27})
table.insert(data.raw["technology"]["weapon-shooting-speed-6"].effects, {type = "gun-speed", ammo_category = "PLORD_40mm_grenade_ammo", modifier = 0.27})

--- PLUTONIUM AMMO
table.insert(data.raw["technology"]["military-4"].effects, {type = "unlock-recipe", recipe = "PLORD_special_explosives"})


data:extend({
	{
		type = "item",
		name = "dummy_item_pluto239",
		subgroup = "other",
		icon = prometheus_core.dir .. "graphics/icons/plutonium-239.png",
		icon_size = 64, icon_mipmaps = 4, stack_size = 1
	},
	{
		type = "item",
		name = "dummy_item_pluto240",
		subgroup = "other",
		icon = prometheus_core.dir .. "graphics/icons/plutonium-240.png",
		icon_size = 64, icon_mipmaps = 4, stack_size = 1
	},
})
local function make_gl_pluto_tech(name, icon, effects, prerequisites)
	return
	{
		type = "technology",
		name = name or "PLORD_40mm_pluto",
		icon_size = 256, icon_mipmaps = 4,
		icon = prometheus_core.dir .. "graphics/technology/" .. icon .. ".png",
		effects = effects or {{type = "unlock-recipe", recipe = "PLORD_40mm_gl_pluto"}},
		prerequisites = prerequisites or {"military-4", "kovarex-enrichment-process", "PLORD_40mm_newphysics"},
		unit =
		{
			count = 5000,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
				{"production-science-pack", 1},
				{"utility-science-pack", 1}
			},
			time = 40
		},
		order = "z-p-b-a-e"
	}
end

if settings.startup["PLORD_pluto_grenade"].value and not (mods["PlutoniumEnergy"]) and not (mods["EnchantedNuclearPort"]) and not (mods["angelsindustries"]) then
	if settings.startup["PLORD_pluto_grenade_orange"].value and not (mods["PlutoniumEnergy"]) then
		data:extend({ make_gl_pluto_tech("PLORD_40mm_pluto", "40mm_pluto239_2", effects, prerequisites) })
		else data:extend({ make_gl_pluto_tech("PLORD_40mm_pluto", "40mm_pluto239", effects, prerequisites) })
	end
	table.insert(data.raw["recipe"]["PLORD_40mm_gl_pluto"].ingredients, {"uranium-235", 30})
end

if (mods["PlutoniumEnergy"]) or (mods["EnchantedNuclearPort"]) then
	table.insert(data.raw["recipe"]["PLORD_40mm_gl_pluto"].ingredients, {"plutonium-239", 20})
end
if (mods["PlutoniumEnergy"]) then 
	data:extend({ make_gl_pluto_tech("PLORD_40mm_pluto", "40mm_pluto239", effects, {"military-4", "kovarex-enrichment-process", "plutonium-processing", "PLORD_40mm_bio_chemicals"}) })
elseif (mods["EnchantedNuclearPort"]) then 
	data:extend({ make_gl_pluto_tech("PLORD_40mm_pluto", "40mm_pluto239_2", effects, {"military-4", "kovarex-enrichment-process", "plutonium-fuel-reprocessing", "PLORD_40mm_bio_chemicals"}) })
end

if (mods["angelsindustries"]) or settings.startup["PLORD_pluto_grenade_orange"].value or (mods["EnchantedNuclearPort"]) and not (mods["PlutoniumEnergy"]) then
	data.raw["projectile"]["PLORD_40mm_grenade_pluto"].animation = prometheus_core.anim_to_projectile_sprite(prometheus_core.dir, "graphics/entity/weapons/40mm_gl_pluto_orange_glow", true)
	data.raw["projectile"]["PLORD_40mm_grenade_pluto"].light = {intensity = 0.8, size = 8, color = {r=0.9, g=0.62, b=0}}
	data.raw["ammo"]["PLORD_40mm_gl_pluto"].icon = prometheus_core.dir .. "graphics/icons/weapons/40mm_gl_pluto_orange.png"
	data.raw["ammo"]["PLORD_40mm_gl_pluto"].pictures[1].layers[1].filename = prometheus_core.dir .. "graphics/icons/weapons/40mm_gl_pluto_orange_box.png"
	data.raw["ammo"]["PLORD_40mm_gl_pluto"].pictures[1].layers[2].filename = prometheus_core.dir .. "graphics/icons/weapons/40mm_gl_pluto_orange_box_glow.png"
	if (mods["angelsindustries"]) then
		data:extend({ make_gl_pluto_tech("PLORD_40mm_pluto", "40mm_pluto240", effects, {"military-4", "angels-plutonium-power", "PLORD_40mm_bio_chemicals"}) })
		table.insert(data.raw["recipe"]["PLORD_40mm_gl_pluto"].ingredients, {"plutonium-240", 50})
		data.raw["capsule"]["PLORD_special_explosives"].subgroup = "petrochem-solids-2"
		data.raw["recipe"]["PLORD_special_explosives"].subgroup = "petrochem-solids-2"
	end
end
--[[
data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[1].radius = 10
data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[4].duration = 45
data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[4].max_distance = 600
data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[10].spawn_min_radius = 9
data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[10].spawn_max_radius = 10
--data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[11].action.repeat_count = 700
--data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[12].action.repeat_count = 700
--data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[12].action.radius = 25
--data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[13].action.repeat_count = 700
--data.raw["projectile"]["PLORD_40mm_grenade_pluto"].action.action_delivery.target_effects[13].action.radius = 17]]--