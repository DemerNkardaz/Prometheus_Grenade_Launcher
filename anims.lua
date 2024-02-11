anims_package.entity.grenade_turret_wepaonry = function()
	return
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/tank-turret.png",
          priority = "low",
          line_length = 8,
          width = 90,
          height = 67,
          frame_count = 1,
          direction_count = 64,
          shift = util.by_pixel(2-2, -40.5 + 24),
          animation_speed = 8,
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret.png",
            priority = "low",
            line_length = 8,
            width = 179,
            height = 132,
            frame_count = 1,
            direction_count = 64,
            shift = util.by_pixel(2.25-2, -40.5 + 24),
            animation_speed = 8,
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-mask.png",
          priority = "low",
          line_length = 8,
          width = 36,
          height = 33,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(2-2, -41.5 + 24),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-mask.png",
            priority = "low",
            line_length = 8,
            width = 72,
            height = 66,
            frame_count = 1,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(2-2, -41.5 + 24),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/tank/tank-turret-shadow.png",
          priority = "low",
          line_length = 8,
          width = 97,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(58.5-50, -0.5),
          hr_version =
          {
            filename = "__base__/graphics/entity/tank/hr-tank-turret-shadow.png",
            priority = "low",
            line_length = 8,
            width = 193,
            height = 134,
            frame_count = 1,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(58.25-50, -0.5),
            scale = 0.5
          }
        }
      }
    }
end



anims_package.explosions.high_explosive = function()
	return
	{
		filename = "__base__/graphics/entity/explosion/explosion-3.png",
		draw_as_glow = true,
		priority = "high",
		line_length = 6,
		frame_count = 17,
		width = 52, height = 46,
		animation_speed = 0.5,
		shift = util.by_pixel(-1,2),
		scale = 4,
		tint = {r=1.0, g=0.5, b=0.3, a = 1.0},
		hr_version =
		{
			filename = "__base__/graphics/entity/explosion/hr-explosion-3.png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 102,
			height = 88,
			frame_count = 17,
			animation_speed = 0.5,
			shift = util.by_pixel(-1,1.5),
			scale = 4 * 0.5,
			tint = {r=1.0, g=0.5, b=0.3, a = 1.0}
		}
	}
end
anims_package.explosions.iron_fist = function(tint)
	if tint == "uranic" then tint_color = {r=0.2, g=1.0, b=0.45, a = 1.0}
	elseif tint and not tint == "uranic" then tint_color = tint
	else tint_color = nil
	end
	return
	{
		{
			filename = "__base__/graphics/entity/small-explosion/small-explosion-1.png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 44,
			height = 90,
			frame_count = 24,
			animation_speed = 0.85,
			shift = util.by_pixel(-1,-24),
			tint = tint_color,
			scale = 0.5 / 2,
			hr_version =
			{
				filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-1.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 88,
				height = 178,
				frame_count = 24,
				animation_speed = 0.85,
				shift = util.by_pixel(-1,-24),
				tint = tint_color,
				scale = 0.5 / 2 / 2
			}
		},
		{
			filename = "__base__/graphics/entity/small-explosion/small-explosion-2.png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 46,
			height = 76,
			frame_count = 24,
			animation_speed = 0.85,
			shift = util.by_pixel(2,-8),
			tint = tint_color,
			scale = 0.5 / 2,
			hr_version =
			{
				filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-2.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 92,
				height = 152,
				frame_count = 24,
				animation_speed = 0.85,
				shift = util.by_pixel(2,-7.5),
				tint = tint_color,
				scale = 0.5 / 2 / 2
			}
		}
	}
end
anims_package.explosions.sentry_eye = function()
	return
		{
			{
				filename = "__base__/graphics/entity/small-explosion/small-explosion-1.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 44,
				height = 90,
				frame_count = 24,
				animation_speed = 0.85,
				shift = util.by_pixel(-1,-24),
				scale = 0.5 / 1.5,
				hr_version =
				{
					filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-1.png",
					draw_as_glow = true,
					priority = "high",
					line_length = 6,
					width = 88,
					height = 178,
					frame_count = 24,
					animation_speed = 0.85,
					shift = util.by_pixel(-1,-24),
					scale = 0.5 / 2 / 1.5
				}
			},
			{
				filename = "__base__/graphics/entity/small-explosion/small-explosion-2.png",
				draw_as_glow = true,
				priority = "high",
				line_length = 6,
				width = 46,
				height = 76,
				frame_count = 24,
				animation_speed = 0.85,
				shift = util.by_pixel(2,-8),
				scale = 0.5 / 1.5,
				hr_version =
				{
					filename = "__base__/graphics/entity/small-explosion/hr-small-explosion-2.png",
					draw_as_glow = true,
					priority = "high",
					line_length = 6,
					width = 92,
					height = 152,
					frame_count = 24,
					animation_speed = 0.85,
					shift = util.by_pixel(2,-7.5),
					scale = 0.5 / 2 / 1.5
				}
			}
		}
end
anims_package.explosions.plasma_phosphorus = function(sprite, speed)
	local filename
	local draw_as_glow = true

	if sprite == "dummy" then 
		filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion_dummy.png"
	elseif sprite == "smoke" then 
		filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion_smoke.png"
		draw_as_glow = false
	else 
		filename = prometheus_core.dir .. "graphics/entity/phosphorus_plasma_explosion.png"
	end

	return
	{
		{
			filename = filename,
			draw_as_glow = draw_as_glow,
			flags = { "compressed" },
			width = 197,
			height = 245,
			frame_count = 47,
			line_length = 6,
			shift = {0.1875, -0.75},
			animation_speed = speed or 0.5,
			scale = 2
		}
	}
end
anims_package.explosions.plasma_hydroxygen = function(sprite, multiplication, scale, anim_speed, tint)
	return
	{
		filename = prometheus_core.dir .. "graphics/entity/" .. sprite .. ".png",
		draw_as_glow = true,
		priority = "high",
		line_length = 6,
		width = 52 * multiplication,
		height = 46 * multiplication,
		frame_count = 17,
		animation_speed = anim_speed or 0.5,
		shift = util.by_pixel(-1,2),
		tint = tint or nil,
		scale = (scale or 6),
		hr_version =
		{
			filename = prometheus_core.dir .. "graphics/entity/hr_" .. sprite ..".png",
			draw_as_glow = true,
			priority = "high",
			line_length = 6,
			width = 102 * multiplication,
			height = 88 * multiplication,
			frame_count = 17,
			animation_speed = anim_speed or 0.5,
			shift = util.by_pixel(-1,1.5),
			tint = tint or nil,
			scale = (scale or 6) * 0.5,
		}
	}
end
anims_package.explosions.inferno = function()
	return
	{
		{
			filename = "__base__/graphics/entity/artillery-cannon-muzzle-flash/muzzle-flash.png",
			draw_as_glow = true,
			line_length = 7,
			width = 138,
			height = 192,
			frame_count = 21,
			scale = 1.75,
			shift = util.by_pixel(0, -100),
			animation_speed = 0.75,
			hr_version =
			{
				filename = "__base__/graphics/entity/artillery-cannon-muzzle-flash/hr-muzzle-flash.png",
				draw_as_glow = true,
				line_length = 7,
				width = 276,
				height = 382,
				frame_count = 21,
				scale = 1.75 * 0.5,
				shift = util.by_pixel(0, -100),
				animation_speed = 0.75
			}
		}
	}
end
anims_package.explosions.thermobaric = function()
	return
	{
		width = 316,
		height = 360,
		frame_count = 100,
		draw_as_glow = true,
		priority = "very-low",
		flags = {"compressed"},
		shift = util.by_pixel(1, -123),
		animation_speed = 0.7,
		scale = 1.35,
		dice_y = 5,
		stripes = nk_fasfix_mirv,
		hr_version =
		{
			width = 628,
			height = 720,
			frame_count = 100,
			draw_as_glow = true,
			priority = "very-low",
			flags = {"linear-magnification"},
			shift = util.by_pixel(0.5, -122.5),
			animation_speed = 0.7,
			scale = 1.35 * 0.5,
			dice_y = 5,
			stripes = nk_fasfix_mirv_hr
		}
	}
end