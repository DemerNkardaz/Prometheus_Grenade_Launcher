local pfx = "PLORD_40mm_gl_"

local replacments = {
	{
		{
			recipe = "PLORD_grenade_launcher_prometheus",
			ingredients = 
			{
				{"steel-plate", 5},
				{"aluminum-plate", 12, "iron-gear-wheel", 10},
				{"plastic-bar", 20}
			}
		}
	},
	{
		{
			recipe = "PLORD_gl_40mm_turret",
			ingredients = 
			{
				{"aluminum-plate", 25, "iron-gear-wheel", 20},
				{"plastic-bar", 20},
				{"steel-plate", 15},
				{"engine-unit", 2}
			}
		}
	},
	{
		{
			recipe = "PLORD_sentry_eye_microunit",
			ingredients = 
			{
				{"electronic-circuit", 2},
				{"graphite", 2},
				{"silicon", 2},
				{"copper-cable", 2}
			}
		}
	},
	{
		{
			recipe = "PLORD_sentry_eye_entity",
			ingredients = 
			{
				{"aluminum-plate", 10, "iron-stick", 10},
				{"copper-cable", 6},
				{"PLORD_sentry_eye_microunit", 2}
			}
		}
	},
	{
		{
			recipe = pfx .. "sentry_eye",
			ingredients = 
			{
				{"PLORD_sentry_eye_entity", 16},
				{"aluminum-plate", 8, "iron-plate", 6},
				{"iron-gear-wheel", 2},
				{"coal", 4}
			}
		}
	},
	{
		{
			recipe = "PLORD_40mm_gl",
			ingredients = 
			{
				{"copper-plate", 10},
				{"lead-plate", 8, "steel-plate", 4},
				{"coal", 10}
			}
		}
	},
	{
		{
			recipe = pfx .. "lighted",
			ingredients = 
			{
				{"copper-plate", 10},
				{"lead-plate", 8, "steel-plate", 4},
				{"coal", 10},
				{"small-lamp", 1}
			}
		}
	},
	{
		{
			recipe = pfx .. "flare",
			ingredients = 
			{
				{"iron-plate", 2},
				{"small-lamp", 1}
			}
		}
	},
	{
		{
			recipe = pfx .. "pellets",
			ingredients = 
			{
				{"copper-plate", 10},
				{"lead-plate", 8, "steel-plate", 4},
				{"shotgun-shell", 10}
			}
		}
	},
	{
		{
			recipe = pfx .. "pellets_piercing",
			ingredients = 
			{
				{"copper-plate", 10},
				{"tungsten-carbide", 8, "steel-plate", 8},
				{"piercing-shotgun-shell", 10}
			}
		}
	},
	{
		{
			recipe = pfx .. "iron_fist",
			ingredients = 
			{
				{"tungsten-carbide", 4, "iron-plate", 8},
				{"steel-plate", 2},
				{"coal", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "he",
			ingredients = 
			{
				{"PLORD_40mm_gl", 2},
				{"plastic-bar", 10},
				{"explosives", 8}
			}
		}
	},
	{
		{
			recipe = pfx .. "inferno",
			ingredients = 
			{
				{"PLORD_40mm_gl", 2},
				{"plastic-bar", 10},
				{"explosives", 8}
			}
		}
	},
	{
		{
			recipe = pfx .. "cluster",
			ingredients = 
			{
				{"PLORD_40mm_gl", 5},
				{"steel-plate", 5},
				{"explosives", 8}
			}
		}
	},
	{
		{
			recipe = pfx .. "incendiary",
			ingredients = 
			{
				{"PLORD_40mm_gl_cluster", 2},
				{type="fluid", name="crude-oil", amount=40},
				{"steel-plate", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "shock",
			ingredients = 
			{
				{"PLORD_40mm_gl", 1},
				{"advanced-circuit", 4},
				{"steel-plate", 5},
				{"battery", 1}
			}
		}
	},
	{
		{
			recipe = pfx .. "uranium_fist",
			ingredients = 
			{
				{"PLORD_40mm_gl_iron_fist", 1},
				{"plastic-bar", 12},
				{"steel-plate", 10},
				{"uranium-238", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "uranium_frag",
			ingredients = 
			{
				{"PLORD_40mm_gl", 2},
				{"plastic-bar", 10},
				{"explosives", 8},
				{"uranium-238", 2}
			}
		}
	},
	{
		{
			recipe = pfx .. "poison",
			ingredients = 
			{
				{"PLORD_40mm_gl", 1},
				{"poison-capsule", 8},
				{"steel-plate", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "stun",
			ingredients = 
			{
				{"PLORD_40mm_gl", 1},
				{"slowdown-capsule", 8},
				{"steel-plate", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "venom",
			ingredients = 
			{
				{"PLORD_40mm_gl", 1},
				{{type="fluid", name="formaldehyde", amount=10}, {"sulfur", 15}},
				{type="fluid", name="water", amount=10},
				{"coal", 15}
			}
		}
	},
	{
		{
			recipe = pfx .. "promethium",
			ingredients = 
			{
				{"PLORD_40mm_gl", 5},
				{"steel-plate", 5},
				{"explosives", 10},
				{"PLORD_promethium_147", 10}
			}
		}
	},
	{
		{
			recipe = pfx .. "acidic",
			ingredients = 
			{
				{"PLORD_40mm_gl", 2},
				{{type="fluid", name="hydrogen-chloride", amount=25}, {type="fluid", name="sulfuric-acid", amount=20}},
				{{type="fluid", name="nitric-acid", amount=20}, {"PLORD_special_explosives", 1}},
				{"steel-plate", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "plasma_hydroxygen",
			ingredients = 
			{
				{"PLORD_40mm_gl", 4},
				{{type="fluid", name="hydrogen", amount=100}, {type="fluid", name="steam", amount=200}},
				{type="fluid", name="oxygen", amount=100},
				{"battery", 20},
				{"se-canister", 5, "silver-wire", 30, "copper-cable", 40}
			}
		}
	},
	{
		{
			recipe = pfx .. "plasma_phosphorus",
			ingredients = 
			{
				{"PLORD_40mm_gl", 5},
				{"battery", 20},
				{"solid-white-phosphorus", 20, "phosphorus", 20, "se-vulcanite-crushed", 20, "stone", 40},
				{"se-canister", 5, "silver-wire", 30, "coal", 40}
			}
		}
	},
	{
		{
			recipe = pfx .. "plasma_hydrargyrum",
			ingredients = 
			{
				{"PLORD_40mm_gl", 5},
				{"battery", 20},
				{"stone", 40},
				{"iron-ore", 10},
				{type="fluid", name="steam", amount=150},
				{type="fluid", name="sulfuric-acid", amount=50}
			}
		}
	},
	{
		{
			recipe = pfx .. "thermobaric",
			ingredients = 
			{
				{"PLORD_40mm_gl_he", 4},
				{"PLORD_40mm_gl_incendiary", 4},
				{{type="fluid", name="se-liquid-rocket-fuel", amount=150}, {type="fluid", name="petroleum-gas", amount=50}},
				{type="fluid", name="sulfuric-acid", amount=50}
			}
		}
	},
	{
		{
			recipe = pfx .. "stasis",
			ingredients = 
			{
				{"PLORD_40mm_gl", 4},
				{"processing-unit", 10},
				{"energy-control-unit", 4, "utility-science-pack", 4},
				{"se-holmium-solenoid", 10, "uranium-fuel-cell", 5}
			}
		}
	},
	{
		{
			recipe = pfx .. "discharge",
			ingredients = 
			{
				{"PLORD_40mm_gl_shock", 1},
				{"discharge-defense-equipment", 1},
				{"battery", 3}
			}
		}
	},
	{
		{
			recipe = pfx .. "pluto",
			ingredients = 
			{
				{"steel-plate", 20},
				{"plastic-bar", 20},
				{"PLORD_special_explosives", 10}
			}
		}
	},
}


prometheus_core.generateFuncCallFromArray(prometheus_core.replaceIngredient, replacments)

if settings.startup["PLORD_pluto_grenade"].value and not (mods["PlutoniumEnergy"]) and not (mods["EnchantedNuclearPort"]) and not (mods["angelsindustries"]) then
	table.insert(data.raw["recipe"]["PLORD_40mm_gl_pluto"].ingredients, {type = "item", name = "uranium-235", amount = 30})
end

if (mods["PlutoniumEnergy"]) or (mods["EnchantedNuclearPort"]) then
	table.insert(data.raw["recipe"]["PLORD_40mm_gl_pluto"].ingredients, {type = "item", name = "plutonium-239", amount = 20})
end