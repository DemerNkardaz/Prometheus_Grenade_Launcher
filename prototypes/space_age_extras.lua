if (mods["space-age"]) then
	data.raw["item"]["PLORD_promethium_147"].spoil_ticks = 18000 * hour

	data:extend({
		{
			type = "recipe",
			name = "PLORD_promethium_147",
			localised_name = {"", {"item-name.PLORD_promethium_147"}},
			energy_required = 2,
			enabled = false,
			auto_recycle = false,
			icon = prometheus_core.dir .. "graphics/icons/promethium-147.png",
			icon_size = 64, 
			category = "recycling",
			subgroup = "raw-material",
			order = "k[promethium-processing]-b[asteroid-promethium]",
			ingredients = {
				{type = "item", name = "promethium-asteroid-chunk", amount = 1},
			},
			results =
			{
				{type = "item", name = "PLORD_promethium_147", amount = 10, probability = 0.50},
				{type = "item", name = "PLORD_promethium_147", amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
				{type = "item", name = "PLORD_promethium_147", amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
				{type = "item", name = "PLORD_promethium_147", amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
				{type = "item", name = "PLORD_promethium_147", amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
				{type = "item", name = "PLORD_promethium_147", amount = 1, probability = 0.02, show_details_in_recipe_tooltip = false},
				{type = "item", name = "PLORD_promethium_147", amount = 10, probability = 0.002, show_details_in_recipe_tooltip = false},
			}
		},
	})

	table.insert(data.raw["technology"]["recycling"].effects, {type = "unlock-recipe", recipe = "PLORD_promethium_147"})
end