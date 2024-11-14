local item_sounds = require("__base__.prototypes.item_sounds")

local PLORD_gl_tank = flib_utils.copy_prototype(data.raw["car"]["tank"], "PLORD_gl_tank")
PLORD_gl_tank.minable = {mining_time = 0.5, result = "PLORD_gl_tank"}
PLORD_gl_tank.localised_name = {"entity-name.PLORD_gl_tank"}
PLORD_gl_tank.guns = { "PLORD_tank_grenade_launcher", "tank-machine-gun", "tank-flamethrower" }

data:extend({PLORD_gl_tank,
	{
		type = "gun",
		name = "PLORD_tank_grenade_launcher",
		icon = "__base__/graphics/icons/tank-cannon.png",
		icon_size = 64, 
		hidden = true,
		subgroup = "gun",
		order = "z[tank]-a[cannon]",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "PLORD_40mm_grenade_ammo",
			cooldown = 60,
			movement_slow_down_factor = 0,
			projectile_creation_distance = 1.6,
			projectile_center = {-0.15625, -0.07812},
			range = 30,
			sound = 
				{
					aggregation = {max_count = 3, remove = true},
					allow_random_repeat = true,
					variations = 
					{
						{filename = prometheus_core.dir .. "sound/grenade_launcher_shot_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
						{filename = prometheus_core.dir .. "sound/grenade_launcher_shot_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
						{filename = prometheus_core.dir .. "sound/grenade_launcher_shot_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
					}
				}
		},
		stack_size = 1
	},
	{
		type = "item-with-entity-data",
		name = "PLORD_gl_tank",
		icon = "__base__/graphics/icons/tank.png",
		subgroup = "PLORD_heavy_weapons",
		order = "c",
		inventory_move_sound = item_sounds.vehicle_inventory_move,
		pick_sound = item_sounds.vehicle_inventory_pickup,
		drop_sound = item_sounds.vehicle_inventory_move,
		place_result = "PLORD_gl_tank",
		stack_size = 1,
	},
	{
		type = "recipe",
		name = "PLORD_gl_tank",
		localised_name = {"entity-name.PLORD_gl_tank"},
		icon = "__base__/graphics/icons/tank.png",
		enabled = false,
		energy_required = 5,
		ingredients =
		{
			{type = "item", name = "engine-unit", amount = 32},
			{type = "item", name = "steel-plate", amount = 50},
			{type = "item", name = "iron-gear-wheel", amount = 15},
			{type = "item", name = "advanced-circuit", amount = 10}
		},
		results = {{type = "item", name = "PLORD_gl_tank", amount = 1}}
	},
	{
		type = "technology",
		name = "PLORD_gl_tank",
		icon_size = 256, 
		icon = "__base__/graphics/technology/tank.png",
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "PLORD_gl_tank"
			}
		},
		prerequisites = {"tank", "PLORD_prometheus_gl", "automobilism", "military-3", "explosives"},
		unit =
		{
			count = 250,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1}
			},
			time = 30
		},
		order = "e-c-d"
	}
})