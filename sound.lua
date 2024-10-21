sounds_package.explosions.high_explosive = function()
	return
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = prometheus_core.dir .. "sound/he_grenade_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.5},
				{filename = prometheus_core.dir .. "sound/he_grenade_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.4},
				{filename = prometheus_core.dir .. "sound/he_grenade_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.5},
			}
	}
end
sounds_package.explosions.iron_fist = function()
	return
	{
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
end
sounds_package.explosions.sentry_eye = function()
	return
	{
		aggregation = {max_count = 2, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = prometheus_core.dir .. "sound/sentry_eye_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.15},
				{filename = prometheus_core.dir .. "sound/sentry_eye_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.15}
			}
	}
end
sounds_package.explosions.plasma_phosphorus = function()
	return
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = prometheus_core.dir .. "sound/phosphorus_plasma_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.75},
				{filename = prometheus_core.dir .. "sound/phosphorus_plasma_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.75},
				{filename = prometheus_core.dir .. "sound/phosphorus_plasma_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.75},
			}
	}
end
sounds_package.explosions.plasma_hydrargyrum = function()
	return
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = prometheus_core.dir .. "sound/hydrargyrum_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.9},
        {filename = prometheus_core.dir .. "sound/hydrargyrum_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.9},
        {filename = prometheus_core.dir .. "sound/hydrargyrum_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.9}
			}
	}
end
sounds_package.explosions.venom = function()
	return
	{
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
end

sounds_package.explosions.plasma_hydroxygen = function()
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
				{filename = "__base__/sound/fight/robot-explosion-5.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0}
			}
	}
end
sounds_package.explosions.shock = function()
	return
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = "__base__/sound/fight/robot-selfdestruct-1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-selfdestruct-2.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
				{filename = "__base__/sound/fight/robot-selfdestruct-3.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0}
			}
	}
end
sounds_package.explosions.inferno = function()
	return
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = prometheus_core.dir .. "sound/inferno_explosion_01.ogg", volume = 0.6},
				{filename = prometheus_core.dir .. "sound/inferno_explosion_02.ogg", volume = 0.6},
				{filename = prometheus_core.dir .. "sound/inferno_explosion_03.ogg", volume = 0.6},
				{filename = prometheus_core.dir .. "sound/inferno_explosion_04.ogg", volume = 0.6}
			},
		audible_distance_modifier = 2
	}
end
sounds_package.explosions.pellets_new = function()
	return
	{
		aggregation = {max_count = 4, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = prometheus_core.dir .. "sound/pellets_grenade_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.55},
				{filename = prometheus_core.dir .. "sound/pellets_grenade_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.55}
			},
		audible_distance_modifier = 0.7
	}
end
sounds_package.explosions.pellets = function()
	return
	{
		aggregation = {max_count = 4, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = "__base__/sound/fight/pump-shotgun-1.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-2.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-3.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-4.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-5.ogg", min_speed = 0.8, max_speed = 1.2, volume = 0.8}
			},
		audible_distance_modifier = 0.7
	}
end
sounds_package.explosions.pellets_piercing = function()
	return
	{
		aggregation = {max_count = 4, remove = true},
		allow_random_repeat = true,
		variations = 
			{
				{filename = "__base__/sound/fight/pump-shotgun-1.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-2.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-3.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-4.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8},
				{filename = "__base__/sound/fight/pump-shotgun-5.ogg", min_speed = 0.6, max_speed = 0.8, volume = 0.8}
			},
		audible_distance_modifier = 0.7
	}
end
sounds_package.explosions.thermobaric = function()
	return
	{
		aggregation = {max_count = 3, remove = true},
		allow_random_repeat = true,
		variations = 
		{
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1},
			{filename = prometheus_core.dir .. "sound/thermobaric_explosion_04.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1}
		},
		audible_distance_modifier = 2
	}
end