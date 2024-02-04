local PLORD_gl_40mm_turret = flib_utils.copy_prototype(data.raw["ammo-turret"]["gun-turret"], "PLORD_gl_40mm_turret")
PLORD_gl_40mm_turret.minable = {mining_time = 0.5, result = "PLORD_gl_40mm_turret"}
PLORD_gl_40mm_turret.icon = prometheus_core.dir .. "graphics/icons/weapons/gl_turret.png"
PLORD_gl_40mm_turret.health = 750
PLORD_gl_40mm_turret.icon_size = 128
PLORD_gl_40mm_turret.prepare_range = 90
PLORD_gl_40mm_turret.shoot_in_prepare_state = false
PLORD_gl_40mm_turret.turret_base_has_direction = true

PLORD_gl_40mm_turret.allow_turning_when_starting_attack = true
PLORD_gl_40mm_turret.call_for_help_radius = 60
PLORD_gl_40mm_turret.shooting_cursor_size = 3.5
PLORD_gl_40mm_turret.attack_parameters =
      {
        type = "projectile",
        ammo_category = "PLORD_40mm_grenade_ammo",
        lead_target_for_projectile_speed = 0.49* 0.9 *1.5,
        movement_slow_down_factor = 0.8,
        cooldown = 45,
        projectile_creation_distance = 1.39375,
        range = 80,
        min_range = 25,
        turn_range = 1.0 / 4.0,
        projectile_center = {0, 0.0875},
        use_shooter_direction = true,
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
        },
      }

local PLORD_sentry_eye_entity = flib_utils.copy_prototype(data.raw["radar"]["radar"], "PLORD_sentry_eye_entity")
PLORD_sentry_eye_entity.minable = {mining_time = 0.1, result = "PLORD_sentry_eye_entity"}
PLORD_sentry_eye_entity.icon = prometheus_core.dir .. "graphics/icons/weapons/sentry_eye.png"
PLORD_sentry_eye_entity.icon_size = 128
PLORD_sentry_eye_entity.max_health = 10
PLORD_sentry_eye_entity.resistances = nil
PLORD_sentry_eye_entity.corpse = nil
PLORD_sentry_eye_entity.dying_explosion = "PLORD_sentry_eye_entity_explosion"
PLORD_sentry_eye_entity.collision_box = {{-0.1, -0.1}, {0.1, 0.1}}
PLORD_sentry_eye_entity.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
PLORD_sentry_eye_entity.damaged_trigger_effect = nil
PLORD_sentry_eye_entity.energy_per_sector = "40J"
PLORD_sentry_eye_entity.max_distance_of_sector_revealed = 2
PLORD_sentry_eye_entity.max_distance_of_nearby_sector_revealed = 0.5
PLORD_sentry_eye_entity.energy_per_nearby_scan = "10J"
PLORD_sentry_eye_entity.integration_patch = nil
PLORD_sentry_eye_entity.energy_usage = "1W"
PLORD_sentry_eye_entity.energy_source =
    {
      type = "void"
    }
PLORD_sentry_eye_entity.working_sound = nil
PLORD_sentry_eye_entity.rotation_speed = 0.035
PLORD_sentry_eye_entity.pictures =
    {
      layers =
      {
        {
          filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity.png",
          priority = "low",
          width = 116,
          height = 128,
          apply_projection = false,
          line_length = 6,
          direction_count = 12,
          shift = util.by_pixel(1, 1),
          scale = 0.5 / 2 / 2,
          hr_version =
          {
            filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_hr.png",
            priority = "low",
            width = 233,
            height = 256,
            apply_projection = false,
            line_length = 6,
            direction_count = 12,
            shift = util.by_pixel(1, 1),
            scale = 0.5 / 2 / 2 / 2
          }
        },
        {
          filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_shadow.png",
          draw_as_shadow = true,
          priority = "low",
          width = 116,
          height = 128,
          apply_projection = false,
          line_length = 6,
          direction_count = 12,
          shift = util.by_pixel(1, 1),
          scale = 0.5 / 2 / 2,
          hr_version =
          {
            filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_shadow_hr.png",
            draw_as_shadow = true,
            priority = "low",
            width = 233,
            height = 256,
            apply_projection = false,
            line_length = 6,
            direction_count = 12,
            shift = util.by_pixel(1, 1),
            scale = 0.5 / 2 / 2 / 2
          }
        },
        {
          filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_light.png",
          draw_as_glow = true,
          width = 116,
          height = 128,
          line_length = 6,
          direction_count = 12,
          shift = util.by_pixel(1, 1),
          scale = 0.5 / 2 / 2,
          hr_version =
          {
            filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_light_hr.png",
            draw_as_glow = true,
            width = 233,
            height = 256,
            line_length = 6,
            direction_count = 12,
            shift = util.by_pixel(1, 1),
            scale = 0.5 / 2 / 2 / 2
          }
        }
      }
    }
PLORD_sentry_eye_entity.water_reflection = nil

data:extend({
PLORD_gl_40mm_turret, PLORD_sentry_eye_entity,
  {
    type = "item",
    name = "PLORD_sentry_eye_microunit",
    icon = prometheus_core.dir .. "graphics/icons/sentry_processor.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "intermediate-product",
    order = "e[electronic-circuit]-a[sentry-microunit]",
    stack_size = 200
  },
  {
    type = "recipe",
    name = "PLORD_sentry_eye_microunit",
    energy_required = 2,
    ingredients =
    {
      {"electronic-circuit", 2},
      {"red-wire", 1},
      {"green-wire", 1}
    },
    result = "PLORD_sentry_eye_microunit",
    result_count = 1
  },
  {
    type = "item",
    name = "PLORD_sentry_eye_entity",
    icon = prometheus_core.dir .. "graphics/icons/weapons/sentry_eye.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "PLORD_heavy_weapons",
    order = "a-b",
    place_result = "PLORD_sentry_eye_entity",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "PLORD_sentry_eye_entity",
    energy_required = 4,
    ingredients = {
      {"iron-stick", 10},
      {"copper-cable", 6},
      {"PLORD_sentry_eye_microunit", 2}
    },
    result = "PLORD_sentry_eye_entity",
    result_count = 1
  },
	{
		type = "gun",
		name = "PLORD_grenade_launcher_prometheus",
		icon = prometheus_core.dir .. "graphics/icons/weapons/gl_prometheus_alt.png",
		icon_size = 128, icon_mipmaps = 4,
		subgroup = "PLORD_heavy_weapons",
		order = "a",
		attack_parameters =
		{
			type = "projectile",
			ammo_category = "PLORD_40mm_grenade_ammo",
			movement_slow_down_factor = 0.8,
			cooldown = 45,
			projectile_creation_distance = 0.6,
      lead_target_for_projectile_speed = 0.49* 0.9 *1.5,
			range = 36,
			projectile_center = {0.2, 0},
			sound = 
      {
        aggregation = {max_count = 4, remove = true},
        allow_random_repeat = true,
        variations = 
        {
          {filename = prometheus_core.dir .. "sound/grenade_launcher_shot_01.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
          {filename = prometheus_core.dir .. "sound/grenade_launcher_shot_02.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
          {filename = prometheus_core.dir .. "sound/grenade_launcher_shot_03.ogg", min_speed = 0.8, max_speed = 1.2, volume = 1.0},
        }
      },
		},
		stack_size = 5,
		pictures = {{filename= prometheus_core.dir .. "graphics/icons/weapons/gl_prometheus.png", size=128, scale=0.45}},
	},
	{
    type = "item",
    name = "PLORD_gl_40mm_turret",
    icon = prometheus_core.dir .. "graphics/icons/weapons/gl_turret.png",
    icon_size = 128, icon_mipmaps = 4,
    subgroup = "PLORD_heavy_weapons",
    order = "a-c",
    place_result = "PLORD_gl_40mm_turret",
    stack_size = 50
	},
  {
    type = "recipe",
    name = "PLORD_grenade_launcher_prometheus",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"iron-gear-wheel", 10},
      {"plastic-bar", 20}
    },
    result = "PLORD_grenade_launcher_prometheus"
  },
  {
    type = "recipe",
    name = "PLORD_gl_40mm_turret",
    enabled = false,
    energy_required = 15,
    ingredients =
    {
      {"iron-gear-wheel", 20},
      {"plastic-bar", 20},
      {"steel-plate", 15},
      {"engine-unit", 2}
    },
    result = "PLORD_gl_40mm_turret"
  }
})
