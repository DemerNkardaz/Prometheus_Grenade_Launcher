local tech_base_ing = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"military-science-pack", 1}}
local tech_frag = {"PLORD_grenade_turret", "military-3", "low-density-structure", "power-armor", "solar-panel-equipment"}
local tech_cluster_he = {"PLORD_grenade_turret", "PLORD_40mm_cluster_he", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
local tech_incendiary = {"PLORD_grenade_turret", "PLORD_40mm_incendiary", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
local tech_shock = {"PLORD_grenade_turret", "PLORD_40mm_shock", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
local tech_bio_chemicals = {"PLORD_grenade_turret", "PLORD_40mm_bio_chemicals", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
local tech_newphysics = {"military-4", "low-density-structure", "power-armor", "solar-panel-equipment", "PLORD_grenade_turret", "PLORD_40mm_newphysics"}

cyrus_launcher_equip_types = {
	{
		{
			damage_modifier = 1.35,
			energy_consumption = "350kJ",
			buffer_capacity = "500kJ",
			order = "a",
			recipe_energy = 10,
			recipe_count = 20,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_frag,
			tech_count = 75,
			tech_time = 25,
			tech_order = "g-m-b"
		}
	},
	{
		{
			name = "cluster",
			damage_modifier = 1.25,
			energy_consumption = "380kJ",
			buffer_capacity = "520kJ",
			order = "b",
			recipe_energy = 10,
			recipe_count = 5,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_cluster_he,
			tech_count = 75,
			tech_time = 30,
			tech_order = "z-z-a"
		}
	},
	{
		{
			name = "he",
			damage_modifier = 1.0,
			energy_consumption = "400kJ",
			buffer_capacity = "600kJ",
			order = "c",
			recipe_energy = 10,
			recipe_count = 5,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_cluster_he,
			tech_count = 120,
			tech_time = 40,
			tech_order = "z-z-b"
		}
	},
	{
		{
			name = "incendiary",
			damage_modifier = 1.25,
			energy_consumption = "400kJ",
			buffer_capacity = "600kJ",
			order = "d",
			recipe_energy = 10,
			recipe_count = 10,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_incendiary,
			tech_count = 100,
			tech_time = 30,
			tech_order = "z-z-c"
		}
	},
	{
		{
			name = "shock",
			damage_modifier = 1.35,
			energy_consumption = "500kJ",
			buffer_capacity = "750kJ",
			order = "e",
			recipe_energy = 10,
			recipe_count = 10,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_shock,
			tech_count = 90,
			tech_time = 30,
			tech_order = "z-z-c-b"
		}
	},
	{
		{
			name = "poison",
			damage_modifier = 1.1,
			energy_consumption = "440kJ",
			buffer_capacity = "520kJ",
			order = "f",
			recipe_energy = 10,
			recipe_count = 5,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_bio_chemicals,
			tech_count = 100,
			tech_time = 30,
			tech_order = "z-z-c"
		}
	},
	{
		{
			name = "stun",
			damage_modifier = 1.0,
			energy_consumption = "470kJ",
			buffer_capacity = "540kJ",
			order = "g",
			recipe_energy = 10,
			recipe_count = 5,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_bio_chemicals,
			tech_count = 100,
			tech_time = 30,
			tech_order = "z-z-c-d"
		}
	},
	{
		{
			name = "acidic",
			damage_modifier = 1.15,
			energy_consumption = "450kJ",
			buffer_capacity = "540kJ",
			order = "h",
			recipe_energy = 10,
			recipe_count = 20,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_bio_chemicals,
			tech_count = 100,
			tech_time = 30,
			tech_order = "z-z-e"
		}
	},
	{
		{
			name = "plasma_hydroxygen",
			damage_modifier = 1.17,
			energy_consumption = "750kJ",
			buffer_capacity = "1000kJ",
			order = "i",
			recipe_energy = 10,
			recipe_count = 10,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_newphysics,
			tech_count = 150,
			tech_time = 30,
			tech_order = "z-z-e-e"
		}
	},
	{
		{
			name = "stasis",
			cooldown = 400,
			damage_modifier = 1.0,
			energy_consumption = "4500kJ",
			buffer_capacity = "17500kJ",
			order = "k",
			recipe_energy = 20,
			recipe_count = 4,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_newphysics,
			tech_count = 250,
			tech_time = 120,
			tech_order = "z-z-e-f"
		}
	},
	{
		{
			name = "discharge",
			damage_modifier = 1.05,
			energy_consumption = "750kJ",
			buffer_capacity = "1000kJ",
			order = "l",
			recipe_energy = 10,
			recipe_count = 5,
			tech_on = true,
			tech_ing = tech_base_ing,
			requirenments = tech_newphysics,
			tech_count = 100,
			tech_time = 30,
			tech_order = "z-z-e-g"
		}
	}
}
