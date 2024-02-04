local PLORD_gl_tank = flib_utils.copy_prototype(data.raw["car"]["tank"], "PLORD_gl_tank")
PLORD_gl_tank.minable = {mining_time = 0.5, result = "PLORD_gl_tank"}
PLORD_gl_tank.localised_name = {"entity-name.PLORD_gl_tank"}
PLORD_gl_tank.guns = { "PLORD_tank_grenade_launcher", "tank-machine-gun", "tank-flamethrower" },

data:extend({PLORD_gl_tank,
  {
    type = "gun",
    name = "PLORD_tank_grenade_launcher",
    icon = "__base__/graphics/icons/tank-cannon.png",
    icon_size = 64, icon_mipmaps = 4,
    flags = {"hidden"},
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
    icon_size = 64, icon_mipmaps = 4,
    subgroup = "PLORD_heavy_weapons",
    order = "c",
    place_result = "PLORD_gl_tank",
    stack_size = 1
  },
  {
    type = "recipe",
    name = "PLORD_gl_tank",
    localised_name = {"entity-name.PLORD_gl_tank"},
    normal =
    {
      enabled = false,
      energy_required = 5,
      ingredients =
      {
        {"engine-unit", 32},
        {"steel-plate", 50},
        {"iron-gear-wheel", 15},
        {"advanced-circuit", 10}
      },
      result = "PLORD_gl_tank"
    },
    expensive =
    {
      enabled = false,
      energy_required = 8,
      ingredients =
      {
        {"engine-unit", 64},
        {"steel-plate", 100},
        {"iron-gear-wheel", 30},
        {"advanced-circuit", 20}
      },
      result = "PLORD_gl_tank"
    }
  },
  {
    type = "technology",
    name = "PLORD_gl_tank",
    icon_size = 256, icon_mipmaps = 4,
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