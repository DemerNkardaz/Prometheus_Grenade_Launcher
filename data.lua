game_core = {}
flib_utils = {}
cyrus_core = {}
prometheus_core = {}
sounds_package = {}
sounds_package.explosions = {}
anims_package = {}
anims_package.explosions = {}
anims_package.entity = {}

game_core.hit_effects = require ("__base__.prototypes.entity.hit-effects")
game_core.explosion_animations = require("__base__.prototypes.entity.explosion-animations")
game_core.smoke_animations = require("__base__.prototypes.entity.smoke-animations")
game_core.math3d = require "math3d"
game_core.fireutil = require("__base__.prototypes.fire-util")

prometheus_core.dir = "__PLORD_Prometheus_GrenadeLauncher__/"
prometheus_core.pfx = "PLORD"
prometheus_core.weapon_assets_40mm = prometheus_core.dir .. "graphics/icons/weapons/40mm_gl_"
prometheus_core.weapon_assets = prometheus_core.dir .. "graphics/entity/weapons/"
prometheus_core.weapon_icons = prometheus_core.dir .. "graphics/icons/weapons/"
prometheus_core.technologies_icons = prometheus_core.dir .. "graphics/technology/"

game_core.base_ent_sounds_path = require("__base__.prototypes.entity.sounds")
flib_utils.copy_prototype = require('__flib__.data-util').copy_prototype

require "util"
require ("anims")
require ("sound")
require ("prototypes/types")
require ("prototypes/item_groups")
require ("prototypes/prometheus")
require ("prototypes/weapons")
require ("prototypes/resistances")
require ("prototypes/data_additional")
require ("prototypes/data_promethium")

require("prototypes/technology_setup")

require("prototypes/space_age_extras")

if mods["space-exploration"] then
  table.insert(se_prodecural_tech_exclusions, "PLORD_")
end

maximum_lifetime = 4960854000

local function initialize_explosions()
	local high_explosive_grenade_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_he_grenade_explosion")
		this.light = {intensity = 0.35,  size = 35, color = {r=1.0, g=0.5, b=0.3}}
		this.animations = anims_package.explosions.high_explosive()
		this.sound = sounds_package.explosions.high_explosive()
		data:extend({this})
	end high_explosive_grenade_explosion()

	local iron_fist_hit_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_ironfist_hit_explosion")
		this.light = {intensity = 0.35,  size = 5, color = {r=1.0, g=0.5, b=0.3}}
		this.height = 0.2
		this.created_effect =
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
		this.animations = anims_package.explosions.iron_fist()
		this.sound = sounds_package.explosions.iron_fist()
		data:extend({this})
	end iron_fist_hit_explosion()

	local uran_fist_hit_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_ironfist_hit_explosion"], "PLORD_uranfist_hit_explosion")
		this.light = {intensity = 0.35,  size = 5, color = {r=0.3, g=0.85, b=0.3}}
		this.animations = anims_package.explosions.iron_fist("uranic")
		data:extend({this})
	end uran_fist_hit_explosion()

	local sentry_eye_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["grenade-explosion"], "PLORD_sentry_eye_entity_explosion")
		this.light = {intensity = 0.35,  size = 3, color = {r=1.0, g=0.7, b=0.8}}
		this.height = 0.1
		this.created_effect =
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
		this.animations = anims_package.explosions.sentry_eye()
		this.sound = sounds_package.explosions.sentry_eye()
		data:extend({this})
	end sentry_eye_explosion()

	local plasma_phosphorus_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["big-explosion"], "PLORD_plasmaphos_explosion")
		this.light = {intensity = 0.5,  size = 20, color = {r=0.5, g=1.0, b=0.5}}
		this.animations = anims_package.explosions.plasma_phosphorus()
		this.sound = sounds_package.explosions.plasma_phosphorus()
		data:extend({this})
	end plasma_phosphorus_explosion()

	local plasma_phosphorus_explosion_light = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_plasmaphos_explosion"], "PLORD_plasmaphos_explosion_light")
		this.light = {intensity = 0.85,  size = 50, color = {r=0.9, g=1.0, b=0.9}}
		this.animations = anims_package.explosions.plasma_phosphorus("dummy", 5)
		this.sound = nil
		data:extend({this})
	end plasma_phosphorus_explosion_light()

	local plasma_phosphorus_explosion_green_light = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_plasmaphos_explosion"], "PLORD_plasmaphos_explosion_light_green")
		this.light = {intensity = 0.5,  size = 30, color = {r=0.9, g=1.0, b=0.5}}
		this.animations = anims_package.explosions.plasma_phosphorus("dummy", 2)
		this.sound = nil
		data:extend({this})
	end plasma_phosphorus_explosion_green_light()

	local plasma_phosphorus_explosion_smoke = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_plasmaphos_explosion"], "PLORD_plasmaphos_explosion_smoke")
		this.light = nil
		this.animations = anims_package.explosions.plasma_phosphorus("smoke")
		this.sound = nil
		data:extend({this})
	end plasma_phosphorus_explosion_smoke()

	local venom_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["explosion-hit"], "PLORD_venom_grenade_explosion")
		this.sound = sounds_package.explosions.venom()
		data:extend({this})
	end venom_explosion()

	local plasma_hydroxygen_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["explosion"], "PLORD_plasma_grenade_explosion_hydroxygen")
		this.light = {intensity = 0.57,  size = 60, color = {r=0.25, g=0.3, b=0.9}}
		this.animations = anims_package.explosions.plasma_hydroxygen("plasma_explosion", 2, 3)
		this.sound = sounds_package.explosions.plasma_hydroxygen()
		data:extend({this})
	end plasma_hydroxygen_explosion()

	local shock_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["explosion"], "PLORD_shock_explosion")
		this.light = {intensity = 0.47,  size = 15, color = {r=0.87, g=0.9, b=0.99}}
		this.animations = anims_package.explosions.plasma_hydroxygen("shock_explosion", 1, 2.5, 1)
		this.sound = sounds_package.explosions.shock()
		data:extend({this})
	end shock_explosion()

	local plasma_hydrargyrum_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["explosion"], "PLORD_plasma_grenade_explosion_hydrargyrum")
		this.light = {intensity = 0.57,  size = 30, color = {r=0.345, g=0.74, b=0.96}}
		this.animations = anims_package.explosions.plasma_hydroxygen("mercuric_explosion", 2, 3.5)
		this.sound = sounds_package.explosions.plasma_hydrargyrum()
		data:extend({this})
	end plasma_hydrargyrum_explosion()

	local plasma_hydrargyrum_explosion_light = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_plasmaphos_explosion"], "PLORD_hydrargyrum_explosion_light")
		this.light = {intensity = 0.85,  size = 50, color = {r=0.776, g=0.855, b=0.914}}
		this.animations = anims_package.explosions.plasma_phosphorus("dummy", 5)
		this.sound = nil
		data:extend({this})
	end plasma_hydrargyrum_explosion_light()

	local plasma_hydrargyrum_explosion_green_light = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_plasmaphos_explosion"], "PLORD_hydrargyrum_explosion_light_green")
		this.light = {intensity = 0.5,  size = 30, color = {r=0.788, g=0.859, b=0.824}}
		this.animations = anims_package.explosions.plasma_phosphorus("dummy", 2)
		this.sound = nil
		data:extend({this})
	end plasma_hydrargyrum_explosion_green_light()

	local inferno_explosion = function()
		data:extend({
			{
				type = "explosion",
				name = "PLORD_inferno_explosion",
				localised_name = {"entity-name.artillery-cannon-muzzle-flash"},
				flags = {"not-on-map"},
				hidden = true,
				subgroup = "explosions",
				animations = anims_package.explosions.inferno(),
				rotate = true,
				height = 0,
				correct_rotation = true,
				light = {intensity = 0.6, size = 20, color = {r=1.0, g=0.85, b=0.6}},
				sound = sounds_package.explosions.inferno(),
				smoke = "smoke-fast",
				smoke_count = 1,
				smoke_slow_down_factor = 1
			}
		})
	end inferno_explosion()

	local discharge_explosion_beam = function()
		local this = flib_utils.copy_prototype(data.raw["beam"]["electric-beam"], "PLORD_discharge_beam")
		this.width = 1
		this.action =
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
		data:extend({this})
	end discharge_explosion_beam()

	local pellets_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["explosion-hit"], "PLORD_pellets_grenade_explosion")
		this.animations[1].scale = 2
		this.sound = sounds_package.explosions.pellets()
		data:extend({this})
	end pellets_explosion()

	local pellets_piercing_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_pellets_grenade_explosion"], "PLORD_pellets_piercing_grenade_explosion")
		this.sound = sounds_package.explosions.pellets_piercing()
		data:extend({this})
	end pellets_piercing_explosion()

	local thermobaric_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["big-artillery-explosion"], "PLORD_thermobaric_explosion")
		this.animations = anims_package.explosions.thermobaric()
		this.sound = sounds_package.explosions.thermobaric()
		data:extend({this})
	end thermobaric_explosion()

	local thermobaric_bigass_explosion = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["big-artillery-explosion"], "PLORD_thermobaric_explosion_bigass")
		this.render_layer = "projectile"
		this.animations[1].animation_speed = 0.35
		this.animations[1].scale = 1.25
		this.animations[1].shift = {1, -6}
		this.animations[1].flags = nil
		this.sound = nil
		data:extend({this})
	end thermobaric_bigass_explosion()

	local thermobaric_explosion_light = function()
		local this = flib_utils.copy_prototype(data.raw["explosion"]["PLORD_thermobaric_explosion"], "PLORD_thermobaric_explosion_light")
		this.animations.hr_version = nil
		this.animations.stripes[1].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
		this.animations.stripes[2].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
		this.animations.stripes[3].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
		this.animations.stripes[4].filename = prometheus_core.dir .. "graphics/entity/fake_nuke.png"
		this.animations.tint = {r=0,g=0,b=0,a=0}
		this.animations.animation_speed= 1
		this.light = {intensity = 0.5, size = 100, color = {r = 0.8, g = 0.6, b = 0.2}}
		this.sound = nil
		data:extend({this})
	end thermobaric_explosion_light()
end initialize_explosions()
data:extend({
	{
		type = "sticker",
		name = "PLORD_incendiary_fire_sticker",
		flags = {"not-on-map"},

		animation =
		{
			filename = prometheus_core.dir .. "graphics/entity/fire-flame/fire-flame-13.png",
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
							sound = game_core.base_ent_sounds_path.poison_capsule_explosion
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
		type = "smoke-with-trigger",
		name = "PLORD_40mm_grenade_hydrargyrum_cloud_visual_dummy",
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		particle_count = 14,
		particle_spread = { 1.6 * 1.05, 1.6 * 0.6 * 1.05 },
		particle_distance_scale_factor = 0.5,
		particle_scale_factor = { 1, 0.707 },
		particle_duration_variation = 80 * 3,
		wave_speed = { 0.5 / 50, 0.5 / 30 },
		wave_distance = { 1, 0.5 },
		spread_duration_variation = 300 - 20,

		render_layer = "object",

		affected_by_wind = false,
		cyclic = true,
		duration = 40 * 25 + 5,
		fade_away_duration = 3 * 80,
		spread_duration = (200 - 20) / 2 ,
		color = {r = 0.7, g = 0.7, b = 0.7, a = 0.322},

		animation = data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"].animation,
		working_sound = data.raw["smoke-with-trigger"]["poison-cloud-visual-dummy"].working_sound
	},
	{
		type = "smoke-with-trigger",
		name = "PLORD_40mm_grenade_hydrargyrum_cloud",
		localised_name = {"", {"entity-name.poison-cloud"}},
		flags = {"not-on-map"},
		show_when_smoke_off = true,
		particle_count = 18,
		particle_spread = { 3.6 * 1.05, 3.6 * 0.6 * 1.05 },
		particle_distance_scale_factor = 3,
		particle_scale_factor = { 1, 0.707 },
		wave_speed = { 1/60, 1/30 },
		wave_distance = { 0.4, 0.2 },
		spread_duration_variation = 50,
		particle_duration_variation = 50 * 3,
		render_layer = "object",

		affected_by_wind = false,
		cyclic = true,
		duration = 40 * 30,
		fade_away_duration = 1.5 * 80,
		spread_duration = 30,
		color = {r = 0.7, g = 0.7, b = 0.7, a = 0.7},

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
							entity_name = "PLORD_40mm_grenade_hydrargyrum_cloud_visual_dummy",
							initial_height = 0
						}
					}
				}
			},
			{
				type = "cluster",
				cluster_count = 12,
				distance = 4 * 1.5,
				distance_deviation = 2,
				action_delivery =
				{
					type = "instant",
					target_effects =
					{
						{
							type = "create-smoke",
							show_in_tooltip = false,
							entity_name = "PLORD_40mm_grenade_hydrargyrum_cloud_visual_dummy",
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
						radius = 8,
						entity_flags = {"breaths-air"},
						action_delivery =
						{
							type = "instant",
							target_effects =
							{
								type = "damage",
								damage = { amount = 10, type = "poison"}
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
		flags = {"not-on-map"},
		hidden = true,
		subgroup = "explosions",
		animations = 
		{
			filename = prometheus_core.dir .. "graphics/entity/big_explosion_grey.png",
			draw_as_glow = true,
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
		flags = {"not-on-map"},
		hidden = true,
		subgroup = "explosions",
		animations = 
		{
			filename = prometheus_core.dir .. "graphics/entity/fake_explosion.png",
			draw_as_glow = true,
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
		name = "PLORD_plasma_hydrargyrum_debuff_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 60,
		damage_interval = 5,
		target_movement_modifier = 0.8,
		damage_per_tick = { amount = 3 * 100 / 60, type = "overheat" },
		spread_fire_entity = "fire-flame-on-tree",
		fire_spread_cooldown = 10,
		fire_spread_radius = 1.25
	},
	{
		type = "sticker",
		name = "PLORD_plasma_hydrargyrum_rad_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 60,
		damage_interval = 5,
		target_movement_modifier = 0.8,
		damage_per_tick = { amount = 3 * 100 / 60, type = "radiation" },
	},
	{
		type = "sticker",
		name = "PLORD_plasma_hydrargyrum_rad_sticker_2",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 120,
		damage_interval = 5,
		damage_per_tick = { amount = 1 * 100 / 60, type = "radiation" },
	},
	{
		type = "sticker",
		name = "PLORD_plasma_hydrargyrum_traumaric_sticker",
		flags = {"not-on-map"},
		duration_in_ticks = 5 * 120,
		damage_interval = 5,
		damage_per_tick = { amount = 1 * 100 / 80, type = "posttraumatic" },
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
		flags = {"not-on-map"},
		hidden = true,
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
		flags = {"not-on-map"},
		hidden = true,
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
      line_length = 5,
      width = 30,
      height = 34,
      frame_count = 50,
      animation_speed = 1,
      shift = util.by_pixel(1.5, 0),
      scale = 2 * 0.5,
			tint = {r=0.25, g=0.94, b=0.84, a = 0.25},
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
		flags = {"not-on-map"},
		hidden = true,
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
		flags = {"not-on-map"},
		hidden = true,
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
			filename = prometheus_core.dir .. "graphics/entity/fire-flame/fire-flame-13.png",
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
	
		emissions_per_second = { pollution = 0.005 },
	
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
	
		emissions_per_second = { pollution = 0.005 },
	
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
PLORD_thermobaric_fire_flame.emissions_per_second = { pollution = 0.01 }
data:extend({PLORD_thermobaric_fire_flame})
local thermobaric_fire_tint = {r=0.43,g=0.6,b=1,a=0.6}
-- for i = 1, 13 do data.raw["fire"]["PLORD_thermobaric_fire_flame"].pictures[i].tint = thermobaric_fire_tint end

prometheus_core.generateFuncCallFromArray(prometheus_core.create_40mm_ammo, prometheus_grenade_types)
prometheus_core.generateFuncCallFromArray(prometheus_core.apply_resistance, prometheus_resistances_table)


if settings.startup["PLORD_make_spawns_breaths_air"].value then 
	if not (mods["RampantFixed"]) and not (not (mods["Rampant"])) then
			prometheus_core.apply_flags_to_entity(false, "unit-spawner", "spawner", ent_class, lvl, "breaths-air")
	end
end

if settings.startup["PLORD_disable_biters_blood"].value then
	for e_name, entity in pairs(data.raw["unit"]) do
			if (e_name:find("biter") or e_name:find("spitter")) and entity.damaged_trigger_effect then
					entity.damaged_trigger_effect = nil
			end
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
		icon_size = 256, 
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
		prerequisites = technology_prerequisites.prometheus,
		unit =
		{
			count = 130,
			ingredients = technology_ingredients.prometheus,
			time = 25
		},
		order = "d-e-a"
	},
	{
		type = "technology",
		name = "PLORD_grenade_turret",
		localised_name = {"", {"item-name.PLORD_gl_40mm_turret"}},
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/gl_turret.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_gl_40mm_turret"
			}
		},
		prerequisites = technology_prerequisites.grenade_turret,
		unit =
		{
			count = 75,
			ingredients = technology_ingredients.grenade_turret,
			time = 100
		},
		order = "z-z-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_flares",
		icon_size = 256, 
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
		prerequisites = technology_prerequisites.flares,
		unit =
		{
			count = 25,
			ingredients = technology_ingredients.flares,
			time = 25
		},
		order = "z-x-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_cluster_he",
		icon_size = 256, 
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
		prerequisites = technology_prerequisites.cluster_he,
		unit =
		{
			count = 120,
			ingredients = technology_ingredients.cluster_he,
			time = 60
		},
		order = "z-z-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_pellets_piercing",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_pellets_piercing.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_pellets_piercing"
			}
		},
		prerequisites = technology_prerequisites.pellets_piercing,
		unit =
		{
			count = 70,
			ingredients = technology_ingredients.pellets_piercing,
			time = 20
		},
		order = "z-z-a"
	},
	{
		type = "technology",
		name = "PLORD_40mm_incendiary",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_incendiary.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_incendiary"
			}
		},
		prerequisites = technology_prerequisites.incendiary,
		unit =
		{
			count = 70,
			ingredients = technology_ingredients.incendiary,
			time = 60
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_gl_uranium_fist",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_uranium_fist.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_uranium_fist"
			}
		},
		prerequisites = technology_prerequisites.uranium_fist,
		unit =
		{
			count = 750,
			ingredients = technology_ingredients.uranium_fist,
			time = 55
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_gl_uranium_frag",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_uranium_frag.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_uranium_frag"
			}
		},
		prerequisites = technology_prerequisites.uranium_frag,
		unit =
		{
			count = 1000,
			ingredients = technology_ingredients.uranium_frag,
			time = 60
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_gl_promethium",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_promethium.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_promethium"
			}
		},
		prerequisites = technology_prerequisites.promethium,
		unit =
		{
			count = 1000,
			ingredients = technology_ingredients.promethium,
			time = 60
		},
		order = "z-z-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_shock",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_shock.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_shock"
			}
		},
		prerequisites = technology_prerequisites.shock,
		unit =
		{
			count = 70,
			ingredients = technology_ingredients.shock,
			time = 45
		},
		order = "z-z-b-b"
	},
	{
		type = "technology",
		name = "PLORD_40mm_bio_chemicals",
		icon_size = 256, 
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
		prerequisites = technology_prerequisites.bio_chemicals,
		unit =
		{
			count = 200,
			ingredients = technology_ingredients.bio_chemicals,
			time = 60
		},
		order = "z-z-e"
	},
	{
		type = "technology",
		name = "PLORD_40mm_thermobaric",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_thermobaric.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_thermobaric"
			}
		},
		prerequisites = technology_prerequisites.thermobaric,
		unit =
		{
			count = 100,
			ingredients = technology_ingredients.thermobaric,
			time = 40
		},
		order = "z-z-e-f"
	},
	{
		type = "technology",
		name = "PLORD_40mm_newphysics",
		icon_size = 256, 
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
		prerequisites = technology_prerequisites.newphysics,
		unit =
		{
			count = 200,
			ingredients = technology_ingredients.newphysics,
			time = 60
		},
		order = "z-z-f"
	},
	{
		type = "technology",
		name = "PLORD_40mm_plasma_phosphor",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_plasma_phosphor.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_plasma_phosphorus"
			}
		},
		prerequisites = technology_prerequisites.plasma_phosphor,
		unit =
		{
			count = 60,
			ingredients = technology_ingredients.plasma_phosphor,
			time = 60
		},
		order = "z-z-f-g"
	},
	{
		type = "technology",
		name = "PLORD_40mm_plasma_mercury",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/40mm_plasma_mercury.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_40mm_gl_plasma_hydrargyrum"
			}
		},
		prerequisites = technology_prerequisites.plasma_mercury,
		unit =
		{
			count = 70,
			ingredients = technology_ingredients.plasma_mercury,
			time = 120
		},
		order = "z-z-f-g-a"
	}
})


local electronics_tech = data.raw["technology"]["electronics"]
	if not electronics_tech.effects then electronics_tech.effects = {} end
	table.insert(electronics_tech.effects, {type = "unlock-recipe", recipe = "PLORD_sentry_eye_microunit"})
	table.insert(electronics_tech.effects, {type = "unlock-recipe", recipe = "PLORD_sentry_eye_entity"})
	
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
		icon_size = 64,  stack_size = 1
	},
	{
		type = "item",
		name = "dummy_item_pluto240",
		subgroup = "other",
		icon = prometheus_core.dir .. "graphics/icons/plutonium-240.png",
		icon_size = 64,  stack_size = 1
	},
})
local function make_gl_pluto_tech(name, icon, effects, prerequisites)
	return
	{
		type = "technology",
		name = name or "PLORD_40mm_pluto",
		icon_size = 256, 
		icon = prometheus_core.dir .. "graphics/technology/" .. icon .. ".png",
		effects = effects or {{type = "unlock-recipe", recipe = "PLORD_40mm_gl_pluto"}},
		prerequisites = prerequisites or technology_prerequisites.pluto,
		unit =
		{
			count = 5000,
			ingredients = technology_ingredients.pluto,
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