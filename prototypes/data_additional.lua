
data:extend({
  {
    type = "projectile",
    name = "PLORD_special_explosives",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
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
              entity_name = "ground-explosion"
            },
            {
              type = "create-entity",
              entity_name = "big-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark-tintable",
              check_buildability = true
            },
            {
              type = "destroy-cliffs",
              radius = 4,
              explosion = "explosion"
            },
            {
              type = "invoke-tile-trigger",
              repeat_count = 1
            },
            {
              type = "destroy-decoratives",
              from_render_layer = "decorative",
              to_render_layer = "object",
              include_soft_decoratives = true, -- soft decoratives are decoratives with grows_through_rail_path = true
              include_decals = false,
              invoke_decorative_trigger = true,
              decoratives_with_trigger_only = false, -- if true, destroys only decoratives that have trigger_effect set
              radius = 2 -- large radius for demostrative purposes
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
              damage = {amount = 75, type = "explosion"}
            },
            {
              type = "damage",
              damage = {amount = 15, type = "acid"}
            },
            {
              type = "damage",
              damage = {amount = 15, type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        radius = 0.1,
        show_in_tooltip = false,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 500, type = "explosion"},
              show_in_tooltip = false
            },
            {
              type = "damage",
              damage = {amount = 100, type = "physical"},
              show_in_tooltip = false
            }
          }
        }
      },
    },
    --light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = prometheus_core.dir .. "graphics/entity/special_explosives.png",
      draw_as_glow = true,
      frame_count = 16,
      line_length = 8,
      animation_speed = 0.250,
      width = 26,
      height = 30,
      shift = util.by_pixel(0, -4),
      priority = "high",
      hr_version =
      {
        filename = prometheus_core.dir .. "graphics/entity/hr_special_explosives.png",
        draw_as_glow = true,
        frame_count = 16,
        line_length = 8,
        animation_speed = 0.250,
        width = 52,
        height = 58,
        shift = util.by_pixel(0.5, -4.5),
        priority = "high",
        scale = 0.5
      }

    },
    shadow =
    {
      filename = "__base__/graphics/entity/cliff-explosives/cliff-explosives-shadow.png",
      frame_count = 16,
      line_length = 8,
      animation_speed = 0.250,
      width = 38,
      height = 22,
      shift = util.by_pixel(-3, 4),
      priority = "high",
      draw_as_shadow = true,
      hr_version =
      {
        filename = "__base__/graphics/entity/cliff-explosives/hr-cliff-explosives-shadow.png",
        frame_count = 16,
        line_length = 8,
        animation_speed = 0.250,
        width = 74,
        height = 42,
        shift = util.by_pixel(-3.5, 4),
        priority = "high",
        draw_as_shadow = true,
        scale = 0.5
      }
    }
  },

  {
    type = "capsule",
    name = "PLORD_special_explosives",
    icon = prometheus_core.dir .. "graphics/icons/special_explosives.png",
    icon_size = 64, 
    flags = {"hide-from-bonus-gui"},
    capsule_action =
    {
      type = "throw",
      attack_parameters =
      {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "grenade",
        cooldown = 30,
        projectile_creation_distance = 0.6,
        range = 20,
        ammo_type =
        {
          category = "grenade",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "projectile",
              projectile = "PLORD_special_explosives",
              starting_speed = 0.3
            },

          }
        }
      }
    },
    subgroup = "raw-material",
    order = "j[special-explosives]",
    stack_size = 20
  },
  {
    type = "recipe",
    name = "PLORD_special_explosives",
    category = "crafting-with-fluid",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type = "item", name = "explosives", amount = 10},
      {type = "item", name = "cliff-explosives", amount = 5},
      {type = "item", name = "plastic-bar", amount = 5},
      {type = "fluid", name = "sulfuric-acid", amount = 20}
    },
    results =
    {
      {type = "item", name = "PLORD_special_explosives", amount = 1}
    },
  },
})