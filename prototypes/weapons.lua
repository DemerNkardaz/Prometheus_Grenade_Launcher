local function initialize_entities()
  local grenade_turret = function()
    local this = flib_utils.copy_prototype(data.raw["ammo-turret"]["gun-turret"], "PLORD_gl_40mm_turret")
    this.minable = {mining_time = 0.5, result = "PLORD_gl_40mm_turret"}
    this.icon = prometheus_core.dir .. "graphics/icons/weapons/gl_turret.png"
    this.health = 750
    this.icon_size = 128
    this.prepare_range = 90
    this.shoot_in_prepare_state = false
    this.turret_base_has_direction = true
    this.allow_turning_when_starting_attack = true
    this.call_for_help_radius = 60
    this.shooting_cursor_size = 3.5
    this.folded_animation = anims_package.entity.grenade_turret_wepaonry()
    this.folding_animation = anims_package.entity.grenade_turret_wepaonry()
    this.preparing_animation = anims_package.entity.grenade_turret_wepaonry()
    this.attacking_animation = anims_package.entity.grenade_turret_wepaonry()
    this.prepared_animation = anims_package.entity.grenade_turret_wepaonry()
    this.attack_parameters =
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
        projectile_center = {-0.1, 0.85},
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
    data:extend({this})
  end grenade_turret()
  local sentry_eye = function()
    local this = flib_utils.copy_prototype(data.raw["radar"]["radar"], "PLORD_sentry_eye_entity")
    this.minable = {mining_time = 0.1, result = "PLORD_sentry_eye_entity"}
    this.icon = prometheus_core.dir .. "graphics/icons/weapons/sentry_eye.png"
    this.icon_size = 128
    this.max_health = 10
    this.resistances = nil
    this.corpse = nil
    this.dying_explosion = "PLORD_sentry_eye_entity_explosion"
    this.collision_box = {{-0.1, -0.1}, {0.1, 0.1}}
    this.selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
    this.damaged_trigger_effect = nil
    this.energy_per_sector = "40J"
    this.max_distance_of_sector_revealed = 2
    this.max_distance_of_nearby_sector_revealed = 0.5
    this.energy_per_nearby_scan = "10J"
    this.integration_patch = nil
    this.energy_usage = "1W"
    this.energy_source =
      {
        type = "void"
      }
    this.working_sound = nil
    this.rotation_speed = 0.035
    this.pictures =
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
            filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_light_colorable.png",
            draw_as_glow = true,
            width = 116,
            height = 128,
            line_length = 6,
            direction_count = 12,
            apply_runtime_tint = true,
            tint = {r = 1, g = 0, b = 0, a = 1},
            shift = util.by_pixel(1, 1),
            scale = 0.5 / 2 / 2,
            hr_version =
            {
              filename = prometheus_core.dir .. "graphics/entity/sentry_eye_entity_light_colorable_hr.png",
              draw_as_glow = true,
              width = 233,
              height = 256,
              line_length = 6,
              direction_count = 12,
              apply_runtime_tint = true,
              tint = {r = 1, g = 0, b = 0, a = 1},
              shift = util.by_pixel(1, 1),
              scale = 0.5 / 2 / 2 / 2
            }
          }
        }
      }
    this.water_reflection = nil
    data:extend({this})
  end sentry_eye()
  local sentry_eye_lightsource = function()
    local this = flib_utils.copy_prototype(data.raw["lamp"]["small-lamp"], "PLORD_sentry_eye_entity_lightsource")
    this.minable = nil
    this.corpse = nil
    this.max_health = 10000
    this.energy_source =
      {
        type = "void"
      }
    this.energy_usage_per_tick = "1W"
    this.circuit_wire_connection_point = nil
    this.circuit_connector_sprites = nil
    this.circuit_wire_max_distance = nil
    this.collision_box = {{0, 0}, {0, 0}}
    this.selection_box = {{0, 0}, {0, 0}}
    this.collision_mask = { "resource-layer" }
    this.light = {intensity = 0.7, size = 1, color = {r=0.9, g=0.1, b=0.12}}
    this.light_when_colored = {intensity = 0, size = 6, color = {r=1.0, g=1.0, b=0.2}}
    this.low_size = 2
    this.low_color_intensity = 0.1
    this.next_upgrade = nil
    this.signal_to_color_mapping = nil
    this.flags = {"not-blueprintable", "not-deconstructable", "placeable-off-grid", "not-on-map"}
    this.selectable_in_game = false
    this.picture_off =
      {
        filename = "__core__/graphics/empty.png",
        priority = "high",
        width = 1,
        height = 1,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
      }
    this.picture_on =
      {
        filename = "__core__/graphics/empty.png",
        priority = "high",
        width = 1,
        height = 1,
        frame_count = 1,
        axially_symmetrical = false,
        direction_count = 1,
      }
    data:extend({this})
  end sentry_eye_lightsource()
end initialize_entities()





data:extend({
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
