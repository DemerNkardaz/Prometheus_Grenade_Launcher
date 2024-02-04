data:extend({
  {
    type = "item-group",
    name = "PLORD_munitions",
    order = "d-a",
    icon = prometheus_core.dir .. "graphics/item_groups/PLORD_weaponry.png",
    icon_size = 256,
    icon_mipmaps = 2
  },
  {
    type = "item-subgroup",
    name = "PLORD_combat_vehicles",
    group = "PLORD_munitions",
    order = "a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_pistols",
    group = "PLORD_munitions",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "PLORD_pistols_ammo",
    group = "PLORD_munitions",
    order = "b-a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_rifles",
    group = "PLORD_munitions",
    order = "c"
  },
  {
    type = "item-subgroup",
    name = "PLORD_rifles_ammo",
    group = "PLORD_munitions",
    order = "c-a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_heavy_weapons",
    group = "PLORD_munitions",
    order = "d"
  },
  {
    type = "item-subgroup",
    name = "PLORD_heavy_weapons_ammo",
    group = "PLORD_munitions",
    order = "d-a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_heavy_weapons_gl_ammo",
    group = "PLORD_munitions",
    order = "d-b"
  },
  {
    type = "item-subgroup",
    name = "PLORD_heavy_weapons_gl_equip",
    group = "PLORD_munitions",
    order = "d-b-a"
  },
  {
    type = "item-subgroup",
    name = "PLORD_power_weapons",
    group = "PLORD_munitions",
    order = "b"
  },
  {
    type = "item-subgroup",
    name = "PLORD_power_weapons_ammo",
    group = "PLORD_munitions",
    order = "b-a"
  }
})
