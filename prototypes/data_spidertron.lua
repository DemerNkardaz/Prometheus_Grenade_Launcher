local PLORD_spidertron_gl = flib_utils.copy_prototype(data.raw["spider-vehicle"]["spidertron"], "PLORD_spidertron_gl")
PLORD_spidertron_gl.guns = { "PLORD_spt_glp_1", "PLORD_spt_glp_2", "PLORD_spt_glp_3", "PLORD_spt_glp_4" }

local PLORD_spt_glp_1 = flib_utils.copy_prototype(data.raw["gun"]["PLORD_grenade_launcher_prometheus"], "PLORD_spt_glp_1")
PLORD_spt_glp_1.localised_name = {"", {"item-name.PLORD_grenade_launcher_prometheus"}}
PLORD_spt_glp_1.hidden = true
PLORD_spt_glp_1.order = "z[spider]-a[rocket-launcher]"
PLORD_spt_glp_1.stack_size = 1
PLORD_spt_glp_1.attack_parameters.cooldown = 30
PLORD_spt_glp_1.attack_parameters.projectile_creation_distance = -0.5
PLORD_spt_glp_1.attack_parameters.projectile_center = {0, 0.3}
PLORD_spt_glp_1.attack_parameters.projectile_orientation_offset = -0.0625
PLORD_spt_glp_1.attack_parameters.movement_slow_down_factor = nil
data:extend({PLORD_spt_glp_1})

local PLORD_spt_glp_2 = flib_utils.copy_prototype(data.raw["gun"]["PLORD_spt_glp_1"], "PLORD_spt_glp_2")
PLORD_spt_glp_2.projectile_orientation_offset = -0.03125

local PLORD_spt_glp_3 = flib_utils.copy_prototype(data.raw["gun"]["PLORD_spt_glp_1"], "PLORD_spt_glp_3")
PLORD_spt_glp_3.projectile_orientation_offset = 0.03125

local PLORD_spt_glp_4 = flib_utils.copy_prototype(data.raw["gun"]["PLORD_spt_glp_1"], "PLORD_spt_glp_4")
PLORD_spt_glp_4.projectile_orientation_offset =0.0625

data:extend({
PLORD_spt_glp_2, PLORD_spt_glp_3, PLORD_spt_glp_4, PLORD_spidertron_gl,
  {
    type = "item-with-entity-data",
    name = "PLORD_spidertron_gl",
    localised_description = {"", {"item-description.spidertron"}},
    icon = "__base__/graphics/icons/spidertron.png",
    icon_tintable = "__base__/graphics/icons/spidertron-tintable.png",
    icon_tintable_mask = "__base__/graphics/icons/spidertron-tintable-mask.png",
    icon_size = 64, 
    subgroup = "PLORD_heavy_weapons",
    order = "z",
    place_result="PLORD_spidertron_gl",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "PLORD_spidertron_gl",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
			{type = "item", name = "exoskeleton-equipment", amount = 4},
      {type = "item", name = "fission-reactor-equipment", amount = 2},
      {type = "item", name = "PLORD_grenade_launcher_prometheus", amount = 4},
      {type = "item", name = "processing-unit", amount = 16},
      {type = "item", name = "low-density-structure", amount = 150},
      {type = "item", name = "radar", amount = 2},
      {type = "item", name = "efficiency-module-3", amount = 2},
      {type = "item", name = "raw-fish", amount = 1}
    },
    results = {{type = "item", name = "PLORD_spidertron_gl", amount = 1}},
  },
})

local function insert_sidertron_gl_to_tech() 
	return
	table.insert(data.raw["technology"]["spidertron"].effects, {type = "unlock-recipe", recipe = "PLORD_spidertron_gl"})
end insert_sidertron_gl_to_tech()