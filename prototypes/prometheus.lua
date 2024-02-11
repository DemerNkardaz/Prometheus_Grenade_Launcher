lighted_frag_light = {intensity = 0.5, size = 35}
flare_grenade_light = {intensity = 0.5, size = 35, color = {r=1.0, g=1.0, b=0.9}}
plasma_hydroxygen_light = {intensity = 0.6, size = 5, color = {r=0.25, g=0.3, b=0.9}}
plasma_phosphorus_light = {intensity = 0.5, size = 3, color = {r=0.5, g=0.96, b=0.7}}
plutonium_grenade_light = {intensity = 0.8, size = 8, color = {r=0, g=0.8, b=0.75}}
uranium_fist_light = {intensity = 0.15, size = 1, color = {r=0, g=0.8, b=0.75}}


data:extend({
  {
    type = "projectile",
    name = "PLORD_40mm_pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 20, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "PLORD_40mm_pellets_piercing",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 40, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "PLORD_40mm_uranium_needle",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 5, type = "physical"}
          }
        }
      }
    },
    animation =
    {
      filename = prometheus_core.dir .. "graphics/entity/uranium_needle.png",
      draw_as_glow = false,
      frame_count = 1,
      width = 3,
      height = 50,
      scale = 0.35,
      priority = "high"
    },
    shadow =
    {
      filename = prometheus_core.dir .. "graphics/entity/uranium_needle_shadow.png",
      draw_as_shadow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      scale = 0.34,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "PLORD_40mm_promethium_needle",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage",
            damage = {amount = 1, type = "physical"}
          },
          {
            type = "create-sticker",
            sticker = "PLORD_promethium_sticker",
            show_in_tooltip = true,
          },
          {
            type = "create-sticker",
            sticker = "PLORD_promethium_sticker_2",
            show_in_tooltip = true,
          }
        }
      }
    },
    animation =
    {
      filename = prometheus_core.dir .. "graphics/entity/promethium_needle.png",
      draw_as_glow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      scale = 0.55,
      priority = "high"
    },
    shadow =
    {
      filename = prometheus_core.dir .. "graphics/entity/uranium_needle_shadow.png",
      draw_as_shadow = true,
      frame_count = 1,
      width = 3,
      height = 50,
      scale = 0.6,
      priority = "high"
    }
  },
})

prometheus_grenade_types = {
  {
    {
      item_type = "prj_child",
      name ="cluster_child",
      projectile_scale = 0.1,
      projectile_is_parented = false,
      shadow_name = "cluster_child",
      parent_name = "cluster"
    }
  },
  {
    {
      item_type = "prj_child",
      name = "incendiary_child",
      projectile_is_empty = true,
      projectile_scale = 0.1,
      projectile_is_parented = true,
      parent_name = "incendiary"
    }
  },
  {
    {
      item_type = "prj_child",
      name = "thermobaric_fire_child",
      projectile_is_empty = true,
      projectile_scale = 0.1,
      projectile_is_parented = true,
      parent_name = "incendiary"
    }
  },
  {
    {
      item_type = "ammo",
      name = nil,
      order = "e-a-a",
      energy_required = 5,
      recipe_ingredients = {
        {"copper-plate", 10},
        {"steel-plate", 4}, {"coal", 10}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "pellets",
      order = "e-a-a-c",
      collisions = "null_collisions",
      collision_force = "collision_only_enemy",
      energy_required = 15,
      recipe_ingredients = {
        {"copper-plate", 10},
        {"steel-plate", 4},
        {"shotgun-shell", 10}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "sentry_eye",
      order = "e-a-a-b",
      ent_glow = true,
      projectile_glow = true,
      cooldown_modifier = 8.0,
      range_modifier = 3.0,
      direction_setup = "sentry_eye_setup",
      energy_required = 5,
      recipe_ingredients = {
        {"PLORD_sentry_eye_entity", 16},
        {"iron-plate", 6},
        {"iron-gear-wheel", 2},
        {"coal", 4}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "sentry_eye_turret",
      clone = "sentry_eye",
      order = "e-a-a-b",
      subgroup = "other",
      ent_glow = true,
      projectile_glow = true,
      cooldown_modifier = 16.0,
      range_modifier = 3.0,
      direction_setup = "sentry_eye_setup"
    }
  },
  {
    {
      item_type = "ammo",
      name = "iron_fist",
      order = "e-a-a-d",
      cooldown_modifier = 0.68,
      range_modifier = 0.8,
      direction_setup = "iron_fist_setup",
      collisions = "collisions",
      collision_force = "collision_only_enemy",
      shadow_name = "iron_fist",
      energy_required = 7,
      piercing_damage = 75,
      recipe_ingredients = {
        {"iron-plate", 8},
        {"steel-plate", 2}, {"coal", 5}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "pellets_piercing",
      piercing_damage = 100,
      order = "e-a-a-e",
      collisions = "null_collisions",
      collision_force = "collision_only_enemy",
      energy_required = 15,
      recipe_ingredients = {
        {"copper-plate", 10},
        {"steel-plate", 8},
        {"piercing-shotgun-shell", 10}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "lighted",
      ent_glow = true,
      order = "e-a-b",
      projectile_light = lighted_frag_light,
      projectile_glow = true,
      energy_required = 5,
      recipe_ingredients = {
        {"copper-plate", 10},
        {"steel-plate", 4},
        {"coal", 10},
        {"small-lamp", 1}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "flare",
      ent_glow = true,
      order = "e-a-c",
      range_modifier = 2.0,
      projectile_light = flare_grenade_light,
      projectile_glow = true,
      energy_required = 2,
      recipe_ingredients = {
        {"iron-plate", 2},
        {"small-lamp", 1}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "he",
      order = "e-a-d",
      cooldown_modifier = 1.25,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 2},
        {"plastic-bar", 10},
        {"cliff-explosives", 8}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "inferno",
      order = "e-a-d-a",
      piercing_damage = 100,
      cooldown_modifier = 1.35,
      range_modifier = 1.20,
      collisions = "collisions",
      collision_force = "collision_only_enemy",
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 2},
        {"plastic-bar", 10},
        {"cliff-explosives", 8}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "cluster",
      order = "e-a-c",
      cooldown_modifier = 1.25,
      energy_required = 10,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 5},
        {"steel-plate", 5},
        {"explosives", 8}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "incendiary",
      order = "e-a-e",
      cooldown_modifier = 2.0,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl_cluster", 2},
        {type="fluid", name="crude-oil", amount=40},
        {"steel-plate", 5}
      },
      category_craft = "crafting-with-fluid"
    }
  },
  {
    {
      item_type = "ammo",
      name = "shock",
      order = "e-a-f",
      cooldown_modifier = 1.5,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 1},
        {"advanced-circuit", 4},
        {"steel-plate", 5},
        {"battery", 1}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "uranium_fist",
      order = "e-a-f-a",
      cooldown_modifier = 0.68,
      direction_setup = "uran_fist_setup",
      collisions = "collisions",
      collision_force = "collision_only_enemy",
      projectile_light = uranium_fist_light,
      shadow_name = "uranium_fist",
      energy_required = 10,
      piercing_damage = 300,
      recipe_ingredients = {
        {"PLORD_40mm_gl_iron_fist", 1},
        {"plastic-bar", 12},
        {"steel-plate", 10}, {"uranium-238", 5}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "uranium_frag",
      piercing_damage = 170,
      order = "e-a-f-b",
      cooldown_modifier = 1.25,
      collisions = "null_collisions",
      collision_force = "collision_only_enemy",
      shadow_name = "uranium_frag",
      energy_required = 10,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 2},
        {"plastic-bar", 10},
        {"explosives", 8},
        {"uranium-238", 2}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "poison",
      order = "e-a-g",
      cooldown_modifier = 1.75,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 1},
        {"poison-capsule", 8},
        {"steel-plate", 5}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "stun",
      order = "e-a-h",
      cooldown_modifier = 2.0,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 1},
        {"slowdown-capsule", 8},
        {"steel-plate", 5}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "venom",
      piercing_damage = 100,
      order = "e-a-h-b",
      cooldown_modifier = 1.4,
      collisions = "collisions",
      collision_force = "collision_only_enemy",
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 1},
        {"sulfur", 15},
        {type="fluid", name="water", amount=10},
        {"coal", 15}
      },
      category_craft = "chemistry"
    }
  },
  {
    {
      item_type = "ammo",
      name = "promethium",
      piercing_damage = 100,
      order = "e-a-h-c",
      cooldown_modifier = 1.25,
      collisions = "null_collisions",
      collision_force = "collision_only_enemy",
      shadow_name = "promethium",
      energy_required = 10,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 5},
        {"steel-plate", 5},
        {"explosives", 10},
        {"PLORD_promethium_147", 10}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "acidic",
      order = "e-a-i",
      cooldown_modifier = 1.3,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 2},
        {type="fluid", name="sulfuric-acid", amount=20},
        {"PLORD_special_explosives", 1}, {"steel-plate", 5}
      },
      category_craft = "crafting-with-fluid"
    }
  },
  {
    {
      item_type = "ammo",
      name = "plasma_hydroxygen",
      ent_glow = true,
      order = "e-a-k",
      cooldown_modifier = 1.3,
      projectile_light = plasma_hydroxygen_light,
      energy_required = 20,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 4},
        {type="fluid", name="steam", amount=200},
        {"battery", 20},
        {"copper-cable", 40}
      },
      category_craft = "chemistry"
    }
  },
  {
    {
      item_type = "ammo",
      name = "plasma_phosphorus",
      ent_glow = true,
      order = "e-a-k-b",
      cooldown_modifier = 1.3,
      projectile_light = plasma_phosphorus_light,
      shadow_name = "plasma_phosphorus",
      energy_required = 20,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 5},
        {"battery", 20},
        {"stone", 40},
        {"coal", 40}
      },
      category_craft = "chemistry"
    }
  },
  {
    {
      item_type = "ammo",
      name = "thermobaric",
      order = "e-a-h-c",
      cooldown_modifier = 7.0,
      direction_setup = "thermobaric_setup",
      collisions = "collisions",
      collision_force = "collision_only_enemy",
      shadow_name = "thermobaric",
      projectile_acc = -0.00020,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl_he", 4},
        {"PLORD_40mm_gl_incendiary", 4},
        {type="fluid", name="petroleum-gas", amount=50},
        {type="fluid", name="sulfuric-acid", amount=50}
      },
      category_craft = "chemistry"
    }
  },
  {
    {
      item_type = "ammo",
      name = "stasis",
      order = "e-a-l",
      cooldown_modifier = 6.0,
      energy_required = 20,
      recipe_ingredients = {
        {"PLORD_40mm_gl", 4},
        {"processing-unit", 10},
        {"utility-science-pack", 4},
        {"uranium-fuel-cell", 5}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "discharge",
      order = "e-a-m",
      cooldown_modifier = 3.75,
      energy_required = 15,
      recipe_ingredients = {
        {"PLORD_40mm_gl_shock", 1},
        {"discharge-defense-equipment", 1},
        {"discharge-defense-remote", 1}
      }
    }
  },
  {
    {
      item_type = "ammo",
      name = "pluto",
      ent_glow = true,
      stack = 1,
      order = "e-a-z",
      cooldown_modifier = 8.5,
      range_modifier = 2.0,
      direction_setup = "pluto_setup",
      collisions = "null_collisions",
      collision_force = "collision_only_enemy",
      projectile_light = plutonium_grenade_light,
      projectile_glow = true,
      energy_required = 50,
      recipe_ingredients = {
        {"steel-plate", 20},
        {"plastic-bar", 20},
        {"PLORD_special_explosives", 10}
      }
    }
  }
}


gl_40mm_actions_list = {
  frag =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "grenade-explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 7, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 25, type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 6,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 1.25, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
  sentry_eye2 =
    {
      {
        type = "direct"
      }
    },
  sentry_eye = 
    {
        {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_sentry_eye_entity",
              trigger_created_entity = "true",
              show_in_tooltip = "true"
            }
          }
        }
      }
    },
  pellets =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_pellets_grenade_explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        trigger_from_target = true,
        target_entities = false,
        collision_mode = "distance-from-center",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "nested-result",
            action =
            {
                type = "direct",
                repeat_count = 12,
                action_delivery =
                {
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_pellet",
                      starting_speed = 1.4,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 20
                    }
                }
            }
          }
        }
      }
    },
  iron_fist = 
    {
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "PLORD_ironfist_hit_explosion"
              },
              {
                type = "create-entity",
                entity_name = "explosion-hit",
                offsets = {{0, 1}},
                offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
              },
              {
                type = "damage",
                damage = { amount = 30 , type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 10 , type = "explosion"}
              },
            {
              type = "create-sticker",
              sticker = "PLORD_ironfist_sticker",
              show_in_tooltip = true,
            }
            }
          }
        }
      }
    },
  uranium_fist = 
    {
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "instant",
            target_effects =
            {
              {
                type = "create-entity",
                entity_name = "PLORD_uranfist_hit_explosion"
              },
              {
                type = "create-entity",
                entity_name = "explosion-hit",
                offsets = {{0, 1}},
                offset_deviation = {{-0.5, -0.5}, {0.5, 0.5}}
              },
              {
                type = "damage",
                damage = { amount = 100, type = "physical"}
              },
              {
                type = "damage",
                damage = { amount = 60, type = "explosion"}
              },
            {
              type = "create-sticker",
              sticker = "PLORD_uranfist_sticker",
              show_in_tooltip = true,
            }
            }
          }
        }
      }
    },
  pellets_piercing =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_pellets_piercing_grenade_explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        trigger_from_target = true,
        target_entities = false,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "nested-result",
            action =
            {
                type = "direct",
                repeat_count = 18,
                action_delivery =
                {
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_pellets_piercing",
                      starting_speed = 1.4,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 20
                    }
                }
            }
          }
        }
      }
    },
  lighted =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "grenade-explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 7, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 25, type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
  flare =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_flare_explosion"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_flare_explosion_2"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_flare_explosion_3"
            }
          }
        }
      }
    },
  he =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_he_grenade_explosion"
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 4.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 0.05,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 750, type = "explosion"}
            },
          }
        }
      },
      {
        type = "area",
        radius = 0.7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 350, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 80, type = "explosion"}
            },
            {
              type = "push-back",
              distance = 0.12
            }
          }
        }
      },
      {
        type = "area",
        radius = 6,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "explosion"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "explosion"}
            },
          }
        }
      }
    },
  inferno = 
    {
      {
        type = "area",
        trigger_from_target = true,
        target_entities = false,
        radius = 1,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "nested-result",
            action =
            {
              type = "line",
              range = 20,
              width = 2,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 50, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 25, type = "explosion"}
                  }
                }
              }
            }
          }
        }
      },
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-explosion",
              entity_name = "PLORD_inferno_explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
    },
  cluster_child = 
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 0.75
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 35, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
  cluster =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "grenade-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            }
          }
        }
      },
      {
        type = "area",
        radius = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 15, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 10,
        distance = 7,
        distance_deviation = 3,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_cluster_child",
          direction_deviation = 0.6,
          starting_speed = 0.45,
          starting_speed_deviation = 0.3
        }
      }
    },
  incendiary_child = 
    {
      {
        type = "area",
        radius = 2.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "fire"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_incendiary_fire_sticker",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-fire",
              entity_name = "PLORD_incendary_fire_flame",
              show_in_tooltip = true
            }
          }
        }
      }
    },
  incendiary =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 4, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 8, type = "fire"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "create-sticker",
              sticker = "PLORD_incendiary_fire_sticker",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-fire",
              entity_name = "PLORD_incendary_fire_flame",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "cluster",
        cluster_count = 20,
        distance = 10,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
      {
        type = "cluster",
        cluster_count = 15,
        distance = 7.5,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
      {
        type = "cluster",
        cluster_count = 20,
        distance = 5,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
      {
        type = "cluster",
        cluster_count = 10,
        distance = 4,
        distance_deviation = 0.5,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_incendiary_child",
          direction_deviation = 0,
          starting_speed = 0.5
        }
      },
    },
  uranium_frag2 =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "uranium-cannon-shell-explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 40, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 20, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
  uranium_frag =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "uranium-cannon-shell-explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        trigger_from_target = true,
        target_entities = false,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "nested-result",
            action =
            {
                type = "area",
                trigger_from_target = true,
                target_entities = false,
                radius = 20,
                repeat_count = 20,
                action_delivery =
                {
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_uranium_needle",
                      starting_speed = 1.4,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.6,
                      range_deviation = 0.6,
                      max_range = 20
                    },
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_uranium_needle",
                      starting_speed = 0.9,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 15
                    },
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_uranium_needle",
                      starting_speed = 0.7,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 10
                    },
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_uranium_needle",
                      starting_speed = 0.4,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 5
                    }
                }
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 40, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 20, type = "physical"}
            }
          }
        }
      }
    },
  shock =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_shock_explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 3,
        force = "enemy",
        action_delivery =
        {
          {
            type = "instant",
            target_effects =
              {
                {
                  type = "create-sticker",
                  sticker = "PLORD_shock_stun",
                  show_in_tooltip = true,
                },
                {
                  type = "push-back",
                  distance = 0.4
                }
              }
          }
        }
      },
      {
        type = "area",
        radius = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 17, type = "electric"}
            },
          }
        }
      },
    },
  poison =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-smoke",
              show_in_tooltip = true,
              entity_name = "PLORD_40mm_grenade_poison_cloud",
              initial_height = 0
            },
            {
              type = "create-particle",
              particle_name = "poison-capsule-metal-particle",
              repeat_count = 2,
              initial_height = 1,
              initial_vertical_speed = 0.1,
              initial_vertical_speed_deviation = 0.05,
              offset_deviation = {{-0.1, -0.1}, {0.1, 0.1}},
              speed_from_center = 0.05,
              speed_from_center_deviation = 0.01
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 5, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 5, type = "physical"}
            }
          }
        }
      },
    },
  venom = 
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_venom_grenade_explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "damage",
              damage = {amount = 40, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 40, type = "poison"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_venom_sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-sticker",
              sticker = "PLORD_venom_sticker_2",
              show_in_tooltip = true,
            },
            {
              type = "create-sticker",
              sticker = "PLORD_venom_sticker_3",
              show_in_tooltip = true,
            }
          }
        }
      },

    },
  promethium =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "big-explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        trigger_from_target = true,
        target_entities = false,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            type = "nested-result",
            action =
            {
                type = "area",
                trigger_from_target = true,
                target_entities = false,
                radius = 20,
                repeat_count = 10,
                action_delivery =
                {
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_promethium_needle",
                      starting_speed = 1.4,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.6,
                      range_deviation = 0.6,
                      max_range = 20
                    },
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_promethium_needle",
                      starting_speed = 0.9,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 15
                    },
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_promethium_needle",
                      starting_speed = 0.7,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 10
                    },
                    {
                      type = "projectile",
                      projectile = "PLORD_40mm_promethium_needle",
                      starting_speed = 0.4,
                      starting_speed_deviation = 0.1,
                      direction_deviation = 0.3,
                      range_deviation = 0.3,
                      max_range = 5
                    }
                }
            }
          }
        }
      },
      {
        type = "area",
        radius = 7,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 30, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 30, type = "physical"}
            }
          }
        }
      },
    },
  thermobaric_fire_child = 
    {
      {
        type = "area",
        radius = 2.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "fire"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_thermobaric_fire_sticker",
              show_in_tooltip = true
            }
          }
        }
      },
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-fire",
              entity_name = "PLORD_thermobaric_fire_flame",
              show_in_tooltip = true
            }
          }
        }
      }
    },
  thermobaric =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_bigass"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_light"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_impact_stage_1"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_impact_stage_2"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_impact_stage_3"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_impact_stage_4"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_thermobaric_explosion_impact_stage_5"
            },
            {
              type = "camera-effect",
              effect = "screen-burn",
              duration = 20,
              ease_in_duration = 5,
              ease_out_duration = 20,
              delay = 0,
              strength = 1,
              full_strength_max_distance = 100,
              max_distance = 500
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 4.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 400, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 400, type = "overpressure"}
            },
            {
              type = "push-back",
              distance = 15
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 300, type = "explosion"},
              damage = {amount = 300, type = "fire"},
            }
          }
        }
      },
      {
        type = "area",
        radius = 15,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 80, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 10, type = "overpressure"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_thermobaric_contusion",
              show_in_tooltip = true,
            },
            {
              type = "create-sticker",
              sticker = "PLORD_thermobaric_contusion_initial",
            },
            {
              type = "push-back",
              distance = 4
            }
          }
        }
      },
      {
        type = "area",
        radius = 25,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 0.5, type = "overpressure"}
            },
            {
              type = "push-back",
              distance = 0.4
            }
          }
        }
      },

      {
        type = "cluster",
        cluster_count = 20,
        distance = 8,
        distance_deviation = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_thermobaric_fire_child",
          direction_deviation = 1,
          starting_speed = 1
        }
      },
      {
        type = "cluster",
        cluster_count = 5,
        distance = 6,
        distance_deviation = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_thermobaric_fire_child",
          direction_deviation = 1,
          starting_speed = 1
        }
      },
      {
        type = "cluster",
        cluster_count = 5,
        distance = 4,
        distance_deviation = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_thermobaric_fire_child",
          direction_deviation = 1,
          starting_speed = 1
        }
      },
      {
        type = "cluster",
        cluster_count = 5,
        distance = 2,
        distance_deviation = 1,
        action_delivery =
        {
          type = "projectile",
          projectile = "PLORD_40mm_grenade_thermobaric_fire_child",
          direction_deviation = 1,
          starting_speed = 1
        }
      },
    },
  stun =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "slowdown-capsule-explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 2, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 2, type = "physical"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      },
      {
        type = "area",
        radius = 1,
        force = "enemy",
        show_in_tooltip = true,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_1",
              show_in_tooltip = true,
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        force = "enemy",
        show_in_tooltip = true,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_2",
              show_in_tooltip = true,
            }
          }
        }
      },
      {
        type = "area",
        radius = 2.5,
        force = "enemy",
        show_in_tooltip = true,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_3",
              show_in_tooltip = true,
            }
          }
        }
      }
    },
  acidic =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_acidic_explosion"
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true,
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false,
              radius = 2.25
            }
          }
        }
      },
      {
        type = "area",
        radius = 6,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 10, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 40, type = "acid"}
            },
            {
              type = "create-sticker",
              sticker = "PLORD_slowdown_sticker_acidic",
              show_in_tooltip = true,
            },
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 5, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 5, type = "acid"}
            },
          }
        }
      }
    },
  plasma_hydroxygen =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_plasma_grenade_explosion_hydroxygen"
            }
          }
        }
      },
      {
        type = "area",
        radius = 4,
        show_in_tooltip = true,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_plasma_debuff_sticker",
              show_in_tooltip = true,
            }
          }
        }
      },
      {
        type = "area",
        radius = 1.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 500, type = "plasma"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "explosion"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 4.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 50, type = "fire"}
            },
            {
              type = "damage",
              damage = {amount = 20, type = "explosion"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 4, type = "fire"}
            }
          }
        }
      }
    },
  plasma_phosphorus =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_plasmaphos_explosion"
            },{
              type = "create-entity",
              entity_name = "PLORD_plasmaphos_explosion_smoke"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_plasmaphos_explosion_light"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_plasmaphos_explosion_light_green"
            }
          }
        }
      },
      {
        type = "area",
        radius = 6,
        show_in_tooltip = true,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_plasma_phosphor_debuff_sticker",
              show_in_tooltip = true,
            }
          }
        }
      },
      {
        type = "area",
        radius = 1.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 300, type = "plasma"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "overheat"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 4.5,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 50, type = "fire"}
            },
            {
              type = "damage",
              damage = {amount = 20, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 10, type = "overheat"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_plasma_phosphor_toxical_debuff_sticker",
              show_in_tooltip = true,
            },
            {
              type = "create-sticker",
              sticker = "fire-sticker",
              show_in_tooltip = true,
            },
            {
              type = "damage",
              damage = {amount = 5, type = "fire"}
            },
            {
              type = "damage",
              damage = {amount = 5, type = "overheat"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 20,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 5, type = "overheat"}
            }
          }
        }
      }
    },
  stasis =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "PLORD_stasis_explosion"
            },
            {
              type = "create-entity",
              entity_name = "PLORD_stasis_explosion_2"
            }
          }
        }
      },
      {
        type = "area",
        radius = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_stasis_stun_sticker",
              show_in_tooltip = true,
            },
            {
              type = "damage", show_in_tooltip = false,
              damage = {amount = 0, type = "plasma"}
            },
          }
        }
      },
      {
        type = "area",
        radius = 1,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-sticker",
              sticker = "PLORD_stasis_stun_sticker_2",
              show_in_tooltip = true,
            }
          }
        }
      }
    },
  discharge =
    {
      {
        type = "instant",
        action_delivery = 
        {
          {
            beam = "PLORD_discharge_beam",
            duration = 25,
            max_length = 24,
            source_offset = {
              0,
              -0.5
            },
            type = "beam"
          },
        },
        force = "enemy",
        radius = 8,
        type = "area",
        trigger_from_target = true,
      },
      {
        type = "area",
        radius = 4,
        force = "enemy",
        action_delivery =
        {
          {
            type = "instant",
            target_effects =
              {
                {
                  type = "create-sticker",
                  sticker = "PLORD_discharge_stun"
                },
                {
                  type = "push-back",
                  distance =1
                }
              }
          }
        }
      },
      {
        type = "area",
        radius = 0.5,
        force = "enemy",
        action_delivery =
        {
          {
            type = "instant",
            target_effects =
              {
                  {
                    type = "push-back",
                    distance = 5
                  }
              }
          }
        }
      },
      {
        type = "area",
        radius = 10,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 60, type = "electric"}
            },
          }
        }
      },
    },
  pluto = {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "set-tile",
            tile_name = "nuclear-ground",
            radius = 9,
            apply_projection = true,
            tile_collision_mask = { "water-tile" }
          },
          {
            type = "destroy-cliffs",
            radius = 9,
            explosion = "explosion"
          },
          {
            type = "create-entity",
            entity_name = "nuke-explosion"
          },
          {
            type = "camera-effect",
            effect = "screen-burn",
            duration = 60,
            ease_in_duration = 5,
            ease_out_duration = 60,
            delay = 0,
            strength = 4,
            full_strength_max_distance = 200,
            max_distance = 800
          },
          {
            type = "play-sound",
            sound = game_core.base_ent_sounds_path.nuclear_explosion(0.9),
            play_on_target_position = false,
            max_distance = 1000,
            audible_distance_modifier = 3
          },
          {
            type = "play-sound",
            sound = game_core.base_ent_sounds_path.nuclear_explosion_aftershock(0.4),
            play_on_target_position = false,
            max_distance = 1000,
            audible_distance_modifier = 3
          },
          {
            type = "damage",
            damage = {amount = 150, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "huge-scorchmark",
            offsets = {{ 0, -0.5 }},
            check_buildability = true
          },
          {
            type = "invoke-tile-trigger",
            repeat_count = 1
          },
          {
            type = "destroy-decoratives",
            include_soft_decoratives = true,
            include_decals = true,
            invoke_decorative_trigger = true,
            decoratives_with_trigger_only = false,
            radius = 14
          },
          {
            type = "create-decorative",
            decorative = "nuclear-ground-patch",
            spawn_min_radius = 7.5,
            spawn_max_radius = 9.5,
            spawn_min = 30,
            spawn_max = 40,
            apply_projection = true,
            spread_evenly = true
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 600,
              radius = 5,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-ground-zero-projectile",
                starting_speed = 0.6 * 0.6,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 400,
              radius = 27,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave",
                starting_speed = 0.5 * 0.5,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 400,
              radius = 20,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-cluster-nuke-explosion",
                starting_speed = 0.5 * 0.5,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 400,
              radius = 4,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-fire-smoke-explosion",
                starting_speed = 0.5 * 0.4,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 400,
              radius = 5,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuke-shockwave-explosion",
                starting_speed = 0.5 * 0.4,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 200,
              radius = 20,
              action_delivery =
              {
                type = "projectile",
                projectile = "atomic-bomb-wave-spawns-nuclear-smoke",
                starting_speed = 0.5 * 0.4,
                starting_speed_deviation = nuke_shockwave_starting_speed_deviation
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              show_in_tooltip = false,
              target_entities = false,
              trigger_from_target = true,
              repeat_count = 8,
              radius = 5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "create-entity",
                    entity_name = "nuclear-smouldering-smoke-source",
                    tile_collision_mask = { "water-tile" }
                  }
                }
              }
            }
          }
        }
      }
    }
}
