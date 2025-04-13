local function create_children_entity(entity, entity_name)
	local children_entity = entity.surface.create_entity{
		name = entity_name,
		position = entity.position,
		force = entity.force
	}
	if children_entity then
		children_entity.destructible = false
		children_entity.minable = false
	else
		game.print("[Prometheus] Error creating children_entity for sentry eye entity on surface " .. tostring(entity.surface.name))
	end
end

local function destroy_children_entity(entity, entity_name)
	local children_entity = entity.surface.find_entity(entity_name, entity.position)
	if children_entity then
		children_entity.destroy()
	end
end

local function triggerEntity_children_event(event, type, parent, children)
	if type == "create" then
		local entity = event.created_entity or event.entity
		if entity and entity.valid and entity.name == parent then
			for _, child_name in ipairs(children) do
				create_children_entity(entity, child_name)
			end
		end
	end
	if type == "remove" then
		local entity = event.entity
		if entity and entity.valid and entity.name == parent then
			for _, child_name in ipairs(children) do
				destroy_children_entity(entity, child_name)
			end
		end
	end 
end

sentryEye_observeRadius = 30
sentryEyes = {}

local function sentryEye_enemyObserver(event)
		local tick = event.tick
				local sentryCoordinates = {}
				for _, entity in pairs(sentryEyes) do
						if entity and entity.valid then
								local unit_number = entity.unit_number
								local entity_name = entity.backer_name or entity.name
								local sentry_position = entity.position
								local radius = sentryEye_observeRadius

								local intersect = false
								for _, coords in pairs(sentryCoordinates) do
										if math.abs(sentry_position.x - coords.x) < radius and math.abs(sentry_position.y - coords.y) <
												radius then
												intersect = true
												break
										end
								end

								if not intersect then
										table.insert(sentryCoordinates, sentry_position)

										local enemies = entity.surface.find_entities_filtered {
												position = entity.position,
												radius = radius,
												force = "enemy"
										}
										if #enemies > 0 then
												sentryCooldown = sentryCooldown or {}
												sentryCooldown[entity_name] = sentryCooldown[entity_name] or 0

												if tick - sentryCooldown[entity_name] >= 180 * settings.global["PLORD_sentry_eye_scan_interval"].value then
														local enemyCount = #enemies
														local message = {}
														if enemyCount == 1 then
																message = string.format(
																		"[gps=%d,%d,%s][img=item.PLORD_sentry_eye_entity] Observer [color=green]%s[/color] has detected approaching of [color=red]%d[/color] enemy.",
																		entity.position.x, entity.position.y, entity.surface.name, entity_name, enemyCount)
														else
																message = string.format(
																		"[gps=%d,%d,%s][img=item.PLORD_sentry_eye_entity] Observer [color=green]%s[/color] has detected approaching of [color=red]%d[/color] enemies.",
																		entity.position.x, entity.position.y, entity.surface.name, entity_name, enemyCount)
														end
														game.print(message)
														local warning_message = string.format("[font=default-bold][color=yellow][/color][/font]")
														rendering.draw_text {
																text = warning_message,
																surface = entity.surface,
																target = entity,
																color = {
																		r = 1,
																		g = 0,
																		b = 0
																},
																scale = 1,
																time_to_live = 300,
																alignment = "center",
																vertical_alignment = "middle",
																scale_with_zoom = true,
																use_rich_text = true
														}
														
														sentryCooldown[entity_name] = tick
												end
										end
								end
						end
				end

end




outline_circle_id = nil
filled_circle_id = nil

local function sentryEye_renderCircle(event)
		local player = game.get_player(event.player_index)
		local selected_entity = player.selected
		if selected_entity and selected_entity.valid and selected_entity.name == "PLORD_sentry_eye_entity" then
				local sentry_name = selected_entity.name
				local unit_number = selected_entity.unit_number
				local position = selected_entity.position

				if outline_circle_id then
						rendering.clear("PLORD_Prometheus_GrenadeLauncher")
				end

				local radius = sentryEye_observeRadius

				outline_circle_id = rendering.draw_circle{
						color = {r = 0.85, g = 0, b = 0, a = 1},
						radius = radius,
						filled = false,
						width = 2,
						target = position,
						surface = player.surface,
						players = {player},
						visible = true
				}

				if filled_circle_id then
						rendering.clear("PLORD_Prometheus_GrenadeLauncher")

				end

				filled_circle_id = rendering.draw_circle{
						color = {r = 0.05, g = 0, b = 0, a = 0},
						radius = radius,
						filled = true,
						target = position,
						surface = player.surface,
						players = {player},
						visible = true
				}
		else
				if outline_circle_id then
						rendering.clear("PLORD_Prometheus_GrenadeLauncher")

						outline_circle_id = nil
				end

				if filled_circle_id then
						rendering.clear("PLORD_Prometheus_GrenadeLauncher")

						filled_circle_id = nil
				end
		end
end


local function sentryEye_turretCheckAmmo()
		for _, surface in pairs(game.surfaces) do
				for _, turret in pairs(surface.find_entities_filtered{type = "ammo-turret"}) do
						local inventory = turret.get_inventory(defines.inventory.turret_ammo)

						for i = 1, #inventory do
								local stack = inventory[i]

								if stack.valid_for_read then
										local ammo_name = stack.name
										if ammo_name == "PLORD_40mm_gl_sentry_eye" then
												stack.set_stack{name = "PLORD_40mm_gl_sentry_eye_turret", count = stack.count}
												game.print("sample text")
										end
								end
						end
				end
		end
end
local function sentryEye_turretReturnAmmo()

end

local function handle_reset_recipes()
		if settings.global["PLORD_reset_recipes"] and settings.global["PLORD_reset_recipes"].value == true then
				local players = game.players
				for _, player in pairs(players) do
						player.force.reset_technology_effects()
				end

				pcall(function()
						settings.global["PLORD_reset_recipes"] = {
								value = false
						}
				end)

				game.print {"prometheus.technology_effects_reapplied"}
		end
end



local function event_register()
	script.on_event({
		defines.events.on_player_main_inventory_changed,
		defines.events.on_player_ammo_inventory_changed
	}, function(event) 

	end)

	script.on_nth_tick(settings.global["PLORD_sentry_eye_scan_tick"].value, function(event) sentryEye_enemyObserver(event, "PLORD_sentry_eye_entity") end)
	
	script.on_event(defines.events.on_selected_entity_changed, function(event)
		sentryEye_renderCircle(event)
	end)

	script.on_event({
		defines.events.on_built_entity,
		defines.events.on_robot_built_entity,
		defines.events.on_trigger_created_entity
	},
		function(event) 
			triggerEntity_children_event(event, "create", "PLORD_sentry_eye_entity", {
				"PLORD_sentry_eye_entity_lightsource"
			})
			local entity = event.created_entity or event.entity
			local surface = entity.surface
			local forbidden_tiles = {
				["out-of-map"] = true,
				["lava-hot"] = true,
				["lava"] = true,
				["empty-space"] = true
			}
			local tile_name = surface.get_tile(entity.position.x, entity.position.y).name

			if entity.name == "PLORD_sentry_eye_entity" then
					if forbidden_tiles[tile_name] then entity.die() else table.insert(sentryEyes, entity) end
			end
	end)
	
	script.on_event({
		defines.events.on_pre_player_mined_item,
		defines.events.on_robot_pre_mined,
		defines.events.on_entity_died,
		defines.events.script_raised_destroy
	},
		function(event) 
			triggerEntity_children_event(event, "remove", "PLORD_sentry_eye_entity", {
				"PLORD_sentry_eye_entity_lightsource"
			})

			local entity = event.entity
			if entity and entity.name == "PLORD_sentry_eye_entity" then
					for i, sentry in ipairs(sentryEyes) do
							if sentry == entity then
									table.remove(sentryEyes, i)
									break
							end
					end
			end
	end)

	script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
			if event.setting == "PLORD_reset_recipes" then
					handle_reset_recipes()
			end
	end)
end


script.on_load(function()
	event_register()
end)

script.on_init(function()
	event_register()
end)

script.on_configuration_changed(function(event)
	event_register()
end)