technology_ingredients = {
  prometheus = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  grenade_turret = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 2},
			{"logistic-science-pack", 1}
    }
  },
  flares = {
    default = {
			{"military-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  cluster_he = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 2},
			{"logistic-science-pack", 1}
    }
  },
  pellets_piercing = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 2},
			{"logistic-science-pack", 1}
    }
  },
  incendiary = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  uranium_fist = {
    default = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
			{"utility-science-pack", 1}
    }
  },
  uranium_frag = {
    default = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
			{"utility-science-pack", 1}
    }
  },
  promethium = {
    default = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
			{"utility-science-pack", 1}
    }
  },
  shock = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  bio_chemicals = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"utility-science-pack", 1},
			{"chemical-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  thermobaric = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  newphysics = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 1},
			{"utility-science-pack", 1},
			{"logistic-science-pack", 1}
    }
  },
  plasma_phosphor = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 2},
			{"utility-science-pack", 2},
			{"logistic-science-pack", 1}
    }
  },
  plasma_mercury = {
    default = {
			{"automation-science-pack", 1},
			{"military-science-pack", 1},
			{"chemical-science-pack", 2},
			{"utility-science-pack", 2},
			{"logistic-science-pack", 1}
    }
  },
  pluto = {
    default = {
			{"automation-science-pack", 1},
			{"logistic-science-pack", 1},
			{"chemical-science-pack", 1},
			{"military-science-pack", 1},
			{"production-science-pack", 1},
			{"utility-science-pack", 1}
    }
  },

  equipment_base = {
    default = {{"automation-science-pack", 1}, {"logistic-science-pack", 1}, {"chemical-science-pack", 1}, {"military-science-pack", 1}},
  }
}

technology_prerequisites = {
  prometheus = {
    default = {"military-2", "military-science-pack", "plastics"},
  },
  grenade_turret = {
    default = {"PLORD_prometheus_gl", "military-3", "explosives"},
  },
  flares = {
    default = {"PLORD_prometheus_gl", "optics"},
  },
  cluster_he = {
    default = {"military-4", "PLORD_prometheus_gl", "cliff-explosives"},
  },
  pellets_piercing = {
    default = {"military-4", "PLORD_prometheus_gl", "cliff-explosives"},
  },
  incendiary = {
    default = {"military-4", "PLORD_grenade_turret", "PLORD_40mm_cluster_he"},
  },
  uranium_fist = {
    default = {"uranium-ammo", "PLORD_grenade_turret", "PLORD_40mm_cluster_he"},
  },
  uranium_frag = {
    default = {"uranium-ammo", "PLORD_grenade_turret", "PLORD_40mm_cluster_he"},
  },
  promethium = {
    default = {"kovarex-enrichment-process", "PLORD_grenade_turret", "PLORD_40mm_gl_uranium_frag"},
  },
  shock = {
    default = {"military-4", "PLORD_grenade_turret", "PLORD_40mm_incendiary"},
  },
  bio_chemicals = {
    default = {"military-4", "PLORD_40mm_cluster_he", "PLORD_40mm_incendiary", "PLORD_grenade_turret"},
  },
  thermobaric = {
    default = {"military-4", "PLORD_40mm_bio_chemicals", "PLORD_grenade_turret"},
  },
  newphysics = {
    default = {"military-4", "PLORD_40mm_bio_chemicals", "PLORD_grenade_turret"},
  },
  plasma_phosphor = {
    default = {"military-4", "PLORD_40mm_newphysics", "PLORD_grenade_turret"},
  },
  plasma_mercury = {
    default = {"military-4", "PLORD_40mm_newphysics", "PLORD_grenade_turret"},
  },
  pluto = {
    default = {"military-4", "kovarex-enrichment-process", "PLORD_40mm_newphysics"}
  },

  equip_frag = {
    default = {"PLORD_grenade_turret", "military-3", "low-density-structure", "power-armor", "solar-panel-equipment"}
  },
  equip_cluster_he = {
    default = {"PLORD_grenade_turret", "PLORD_40mm_cluster_he", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
  },
  equip_incendiary = {
    default = {"PLORD_grenade_turret", "PLORD_40mm_incendiary", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
  },
  equip_shock = {
    default = {"PLORD_grenade_turret", "PLORD_40mm_shock", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
  },
  equip_bio_chemicals = {
    default = {"PLORD_grenade_turret", "PLORD_40mm_bio_chemicals", "military-4", "low-density-structure", "power-armor", "solar-panel-equipment"}
  },
  equip_newphysics = {
    default = {"military-4", "low-density-structure", "power-armor", "solar-panel-equipment", "PLORD_grenade_turret", "PLORD_40mm_newphysics"}
  },
}

local tech_arrays = {technology_ingredients, technology_prerequisites}
for _, array in ipairs(tech_arrays) do
    for key, value in pairs(array) do
        local defval = value.default or value
        if mods["space-exploration"] then
            array[key] = value.se or defval
        else
            array[key] = defval
        end
    end
end