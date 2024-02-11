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

global.sentryEye_observeRadius = 30

local function sentryEye_enemyObserver(event, sentry_name)
    local tick = event.tick
    if tick % 250 == 0 then
        local surface = game.get_surface(1)
        local entities = surface.find_entities_filtered{ name = sentry_name }
        local sentryCoordinates = {}

        for _, entity in pairs(entities) do
            if entity and entity.valid then
                local unit_number = entity.unit_number
                local entity_name = entity.backer_name or sentry_name
                local sentry_position = { x = entity.position.x, y = entity.position.y }
                local radius = global.sentryEye_observeRadius

                local intersect = false
                for _, coords in pairs(sentryCoordinates) do
                    if math.abs(sentry_position.x - coords.x) < radius and math.abs(sentry_position.y - coords.y) < radius then
                        intersect = true
                        break
                    end
                end
                  
                if not intersect then
                    table.insert(sentryCoordinates, sentry_position)

                    local enemies = entity.surface.find_entities_filtered{
                        position = entity.position,
                        radius = radius,
                        force = "enemy"
                    }
                    if #enemies > 0 then


                        global.sentryCooldown = global.sentryCooldown or {}
                        global.sentryCooldown[entity_name] = global.sentryCooldown[entity_name] or 0

                        if tick - global.sentryCooldown[entity_name] >= 180 * 10 then
                            global.sentryCooldown[entity_name] = tick

                            local enemyCount = #enemies
                            local message = {}
                            if enemyCount == 1 then
                              message = string.format("[gps=%d, %d][img=item.PLORD_sentry_eye_entity] Observer [color=green]%s[/color] has detected approaching of [color=red]%d[/color] enemy.",
                            entity.position.x, entity.position.y, entity_name, enemyCount)
                            else
                              message = string.format("[gps=%d, %d][img=item.PLORD_sentry_eye_entity] Observer [color=green]%s[/color] has detected approaching of [color=red]%d[/color] enemies.",
                            entity.position.x, entity.position.y, entity_name, enemyCount)
                            end
                            game.print(message)
                            local warning_message = string.format("[font=default-bold][color=yellow]⚠️[/color][/font]")
                            surface.create_entity{name="flying-text", text=warning_message, position={entity.position.x, entity.position.y - 2}}
                        end
                    end
                end
            end
        end
    end
end

global.outline_circle_id = nil
global.filled_circle_id = nil

local function sentryEye_renderCircle(event)
    local player = game.get_player(event.player_index)
    local selected_entity = player.selected
    if selected_entity and selected_entity.valid and selected_entity.name == "PLORD_sentry_eye_entity" then
        local sentry_name = selected_entity.name
        local unit_number = selected_entity.unit_number
        local position = selected_entity.position

        if global.outline_circle_id then
            rendering.destroy(global.outline_circle_id)
        end

        local radius = global.sentryEye_observeRadius

        global.outline_circle_id = rendering.draw_circle{
            color = {r = 0.85, g = 0, b = 0, a = 1},
            radius = radius,
            filled = false,
            width = 2,
            target = position,
            surface = player.surface,
            players = {player},
            visible = true
        }

        if global.filled_circle_id then
            rendering.destroy(global.filled_circle_id)
        end

        global.filled_circle_id = rendering.draw_circle{
            color = {r = 0.05, g = 0, b = 0, a = 0},
            radius = radius,
            filled = true,
            target = position,
            surface = player.surface,
            players = {player},
            visible = true
        }
    else
        if global.outline_circle_id then
            rendering.destroy(global.outline_circle_id)
            global.outline_circle_id = nil
        end

        if global.filled_circle_id then
            rendering.destroy(global.filled_circle_id)
            global.filled_circle_id = nil
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



local function event_register()
  script.on_event({
    defines.events.on_player_main_inventory_changed,
    defines.events.on_player_ammo_inventory_changed
  }, function(event) 

  end)

  script.on_event(defines.events.on_tick, function(event) sentryEye_enemyObserver(event, "PLORD_sentry_eye_entity") end)
  
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
      if entity.name == "PLORD_sentry_eye_entity" and surface.get_tile(entity.position.x, entity.position.y).name == "out-of-map" then
          entity.die()
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
  end)

  script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
      if settings.global["PLORD_reset_recipes"] and settings.global["PLORD_reset_recipes"].value == true then
          local players = game.players
          for _, player in pairs(players) do
              player.force.reset_technology_effects()
          end
          settings.global["PLORD_reset_recipes"] = {value = false}
          game.print{"prometheus.technology_effects_reapplied"}
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