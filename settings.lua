data:extend({
	{
		type = "bool-setting",
		name = "PLORD_make_spawns_breaths_air",
		setting_type = "startup",
		default_value = false,
		order = "a-a-a"
	},
	{
		type = "bool-setting",
		name = "PLORD_pluto_grenade",
		setting_type = "startup",
		default_value = false,
		order = "a-a-b"
	},
	{
		type = "bool-setting",
		name = "PLORD_pluto_grenade_orange",
		setting_type = "startup",
		default_value = false,
		order = "a-a-c"
	},
	{
		type = "bool-setting",
		name = "PLORD_disable_biters_blood",
		setting_type = "startup",
		default_value = false,
		order = "a-a-d"
	},
  --[[
	{
		type = "bool-setting",
		name = "PLORD_off_radar_bonus",
		setting_type = "runtime-global",
		default_value = false,
		order = "a-a-a"
	},
  ]]--
	{
		type = "bool-setting",
		name = "PLORD_reset_recipes",
		setting_type = "runtime-global",
		default_value = false,
		order = "a-a-b"
	},
	{
		type = "double-setting",
		name = "PLORD_sentry_eye_scan_interval",
		setting_type = "runtime-global",
		default_value = 2.0,
		minimum_value = 0.0,
		order = "a-a-c"
	},
	{
		type = "int-setting",
		name = "PLORD_sentry_eye_scan_tick",
		setting_type = "runtime-global",
		default_value = 250,
		minimum_value = 100,
		order = "a-a-d"
	},
})