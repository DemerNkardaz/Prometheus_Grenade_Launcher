data:extend({
	{
		type = "item",
		name = "PLORD_promethium_147",
		icon = prometheus_core.dir .. "graphics/icons/promethium-147.png",
		pictures =
		{
			layers =
			{
				{
					size = 64,
					filename = prometheus_core.dir .. "graphics/icons/promethium-147.png",
					scale = 0.5,
					mipmap_count = 4
				},
				{
					draw_as_light = true,
					blend_mode = "normal",
					size = 64,
					filename = prometheus_core.dir .. "graphics/icons/promethium-147_glow.png",
					scale = 0.5,
					tint = {r = 1, g = 1, b = 1, a = 1},
					mipmap_count = 4
				}
			}
		},
		icon_size = 64, 
		subgroup = "intermediate-product",
		order = "r[promethium-147]",
    inventory_move_sound = item_sounds.nuclear_inventory_move,
    pick_sound = item_sounds.nuclear_inventory_pickup,
    drop_sound = item_sounds.nuclear_inventory_move,
		stack_size = 100,
    weight = 20*kg
	},
	{
		type = "recipe",
		name = "PLORD_promethium_processing",
		energy_required = 12,
		enabled = false,
		category = "centrifuging",
		ingredients = {{type = "item", name = "uranium-235", amount = 1}},
		icon = prometheus_core.dir .. "graphics/icons/promethium_proccess.png",
		icon_size = 64, 
		subgroup = "raw-material",
		order = "k[promethium-processing]",
		results =
		{
			{
				type = "item",
				name = "PLORD_promethium_147",
				probability = 0.15,
				amount = 4
			},
			{
				type = "item",
				name = "PLORD_promethium_147",
				amount = 2
			},
		}
	}
})
table.insert(data.raw["technology"]["kovarex-enrichment-process"].effects, {type = "unlock-recipe", recipe = "PLORD_promethium_processing"})