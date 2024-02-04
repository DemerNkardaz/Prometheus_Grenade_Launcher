prometheus_resistances_table = {
	{
		{
			ent_type = "unit",
			ent_name = "biter",
			ent_class = "small",
			resistances = {
					{"plasma", -5, -40},
					{"overpressure", -5, -50},
					{"acid", -2, -60},
					{"poison", -2, -60},
					{"radiation", -3, -100}
				}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "biter",
			ent_class = "medium",
			resistances = {
					{"plasma", 2, 12},
					{"overpressure", -5, -40},
					{"acid", -2, -30},
					{"poison", -2, -30},
					{"radiation", -3, -70}
			}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "biter",
			ent_class = "big",
			resistances = {
					{"plasma", 2, 12},
					{"overpressure", -4, -40},
					{"posttraumatic", 0, 4},
					{"overheat", 0, 20},
					{"fire", 0, 7},
					{"electric", 0, 4},
					{"acid", -2, -15},
					{"radiation", -3, -40}
			}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "biter",
			ent_class = "behemoth",
			resistances = {
					{"plasma", 2, 17},
					{"overpressure", -1, -10},
					{"posttraumatic", 0, 10},
					{"overheat", 0, 50},
					{"fire", 0, 24},
					{"electric", 2, 10},
					{"acid", 0, -3},
					{"radiation", -10, 0}
			}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "spitter",
			ent_class = "small",
			resistances = {
					{"plasma", -5, -70},
					{"overpressure", -5, -75},
					{"acid", 2, 5},
					{"poison", -4, -75},
					{"radiation", -3, -140}
			}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "spitter",
			ent_class = "medium",
			resistances = {
					{"plasma", -4, -40},
					{"overpressure", -5, -45},
					{"acid", 4, 10},
					{"poison", 0, -40},
					{"radiation", -3, -100}
			}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "spitter",
			ent_class = "big",
			resistances = {
					{"plasma", 0, 10},
					{"overpressure", -2, -20},
					{"overheat", 0, 7},
					{"fire", 0, 5},
					{"electric", 0, 4},
					{"acid", 0, 20},
					{"radiation", -3, -50}
			}
		}
	},
	{
		{
			ent_type = "unit",
			ent_name = "spitter",
			ent_class = "behemoth",
			resistances = {
					{"plasma", 2, 17},
					{"overpressure", -2, -10},
					{"posttraumatic", 0, 5},
					{"overheat", 0, 50},
					{"fire", 0, 17},
					{"electric", 1, 7},
					{"acid", 0, 40},
					{"radiation", -10, -30}
			}
		}
	},
	{
		{
			ent_type = "turret",
			ent_name = "worm",
			ent_class = "small",
			resistances = {
					{"overheat", 1, 20},
					{"overpressure", -2, -25},
					{"posttraumatic", 0, 10},
					{"fire", 0, 10},
					{"acid", 0, 5},
					{"radiation", 0, 10}
			}
		}
	},
	{
		{
			ent_type = "turret",
			ent_name = "worm",
			ent_class = "medium",
			resistances = {
					{"overheat", 3, 25},
					{"overpressure", -1, -17},
					{"posttraumatic", 0, 20},
					{"acid", 0, 7},
					{"radiation", 0, 13}
			}
		}
	},
	{
		{
			ent_type = "turret",
			ent_name = "worm",
			ent_class = "big",
			resistances = {
					{"overheat", 10, 50},
					{"overpressure", -1, -13},
					{"posttraumatic", 0, 40},
					{"acid", 0, 17},
					{"radiation", 0, 17}
			}
		}
	},
	{
		{
			ent_type = "turret",
			ent_name = "worm",
			ent_class = "behemoth",
			resistances = {
					{"overheat", 10, 75},
					{"overpressure", -1, -11},
					{"posttraumatic", 0, 75},
					{"fire", 0, 41},
					{"acid", 0, 24},
					{"radiation", 0, 27}
			}
		}
	},
	{
		{
			ent_type = "unit-spawner",
			ent_name = "biter",
			resistances = {
					{"poison", 5, 25},
					{"radiation", 0, -20},
					{"overheat", -5, -30},
					{"overpressure", -10, -50},
					{"plasma", -3, -14}
			}
		}
	},
	{
		{
			ent_type = "unit-spawner",
			ent_name = "spitter",
			resistances = {
					{"poison", 7, 47},
					{"radiation", 0, -27},
					{"overheat", -6, -40},
					{"overpressure", -10, -55},
					{"plasma", -3, -18}
			}
		}
	},
	{
		{
			ent_type = "furnace",
			resistances = {
					{"overheat", 0, 100},
					{"posttraumatic", 0, 100},
					{"radiation", 0, 100}
			}
		}
	},
	{
		{
			force_name = true,
			ent_type = "furnace",
			ent_name = "stone-furnace",
			resistances = {
					{"plasma", 0, 50},
					{"electric", 0, 50},
					{"overpressure", 0, 25},
			}
		}
	},
	{
		{
			force_name = true,
			ent_type = "furnace",
			ent_name = "steel-furnace",
			resistances = {
					{"plasma", 0, 75},
					{"electric", 0, 75},
					{"overpressure", 0, 50},
			}
		}
	},
	{
		{
			force_name = true,
			ent_type = "furnace",
			ent_name = "electric-furnace",
			resistances = {
					{"plasma", 0, 90},
					{"electric", 0, 75},
					{"overpressure", 0, 75},
			}
		}
	},
	{
		{
			ent_type = "storage-tank",
			resistances = {
					{"plasma", 0, 50},
					{"overheat", 0, 100},
					{"posttraumatic", 0, 100},
					{"radiation", 0, 100},
			}
		}
	},
	{
		{
				ent_type = "storage-tank",
				resistances = {
						{"plasma", 0, 50},
						{"overheat", 0, 100},
						{"posttraumatic", 0, 100},
						{"radiation", 0, 100},
				}
		},
	},
	{
			{
					ent_type = "container",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "logistic-container",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "transport-belt",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "underground-belt",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "splitter",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "generator",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "burner-generator",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "pipe",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "pipe-to-ground",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "heat-pipe",
					resistances = {
							{"overheat", 0, 100},
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "boiler",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "assembling-machine",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 70},
					}
			},
	},
	{
			{
					ent_type = "electric-pole",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "lamp",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 25},
					}
			},
	},
	{
			{
					ent_type = "pump",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "offshore-pump",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "inserter",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 75},
					}
			},
	},
	{
			{
					ent_type = "radar",
					resistances = {
							{"overheat", 0, 25},
							{"posttraumatic", 0, 100},
							{"radiation", 0, -50},
					}
			},
	},
	{
			{
					ent_type = "wall",
					resistances = {
							{"overheat", 0, 50},
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "gate",
					resistances = {
							{"overheat", 0, 50},
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "lab",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, -75},
					}
			},
	},
	{
			{
					ent_type = "loader",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "loader-1x1",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "accumulator",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "beacon",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	},
	{
			{
					ent_type = "reactor",
					resistances = {
							{"posttraumatic", 0, 100},
							{"radiation", 0, 100},
					}
			},
	}
}


if (mods["Rampant"]) then

	local rampants_resistance_data = {
		acid_biters = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "1",
					resistances = {
							{"plasma", -5, -75},
							{"overpressure", -5, -75},
							{"overheat", 0, -75},
							{"posttraumatic", 0, -60},
							{"radiation", -3, -100}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "2",
					resistances = {
							{"plasma", -5, -65},
							{"overpressure", -5, -65},
							{"overheat", 0, -65},
							{"posttraumatic", 0, -50},
							{"radiation", -3, -90}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "3",
					resistances = {
							{"plasma", -4, -55},
							{"overpressure", -4, -55},
							{"overheat", 0, -55},
							{"posttraumatic", 0, -40},
							{"radiation", -3, -85}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "4",
					resistances = {
							{"plasma", -4, -34},
							{"overpressure", -4, -34},
							{"overheat", 0, -34},
							{"posttraumatic", 0, -30},
							{"radiation", -3, -80}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "5",
					resistances = {
							{"plasma", -4, -24},
							{"overpressure", -4, -24},
							{"overheat", 0, -24},
							{"posttraumatic", 0, -20},
							{"radiation", -2, -75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "6",
					resistances = {
							{"plasma", -2, -20},
							{"overpressure", -2, -20},
							{"overheat", 0, -20},
							{"posttraumatic", 0, -15},
							{"radiation", -2, -70}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "7",
					resistances = {
							{"plasma", -1, -10},
							{"overpressure", -1, -10},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -10},
							{"radiation", -1, -60}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "8",
					resistances = {
							{"plasma", 2, 24},
							{"overpressure", 0, 10},
							{"overheat", 0, 10},
							{"posttraumatic", 0, 10},
							{"radiation", 0, -50}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "9",
					resistances = {
							{"plasma", 5, 27},
							{"overpressure", 0, 27},
							{"overheat", 0, 24},
							{"posttraumatic", 0, 15},
							{"radiation", 0, -40}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "acid",
					lvl = "10",
					resistances = {
						{"plasma", 5, 37},
						{"overpressure", 0, 37},
						{"overheat", 2, 34},
						{"posttraumatic", 0, 20},
						{"radiation", 0, -20}
					}
				}
			}
		},
		acid_spitters = {
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "1",
					resistances = {
							{"plasma", -5, -95},
							{"overpressure", -5, -100},
							{"overheat", 0, -84},
							{"posttraumatic", 0, -70},
							{"radiation", -3, -150}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "2",
					resistances = {
							{"plasma", -5, -90},
							{"overpressure", -5, -95},
							{"overheat", 0, -77},
							{"posttraumatic", 0, -55},
							{"radiation", -3, -120}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "3",
					resistances = {
							{"plasma", -4, -80},
							{"overpressure", -4, -90},
							{"overheat", 0, -68},
							{"posttraumatic", 0, -45},
							{"radiation", -3, -100}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "4",
					resistances = {
							{"plasma", -4, -74},
							{"overpressure", -4, -80},
							{"overheat", 0, -63},
							{"posttraumatic", 0, -35},
							{"radiation", -3, -90}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "5",
					resistances = {
							{"plasma", -4, -65},
							{"overpressure", -4, -74},
							{"overheat", 0, -45},
							{"posttraumatic", 0, -25},
							{"radiation", -2, -80}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "6",
					resistances = {
							{"plasma", -2, -40},
							{"overpressure", -2, -40},
							{"overheat", 0, -33},
							{"posttraumatic", 0, -20},
							{"radiation", -2, -70}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "7",
					resistances = {
							{"plasma", -1, -30},
							{"overpressure", -1, -30},
							{"overheat", 0, -16},
							{"posttraumatic", 0, -15},
			{"radiation", -1, -60}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "8",
					resistances = {
							{"plasma", -1, -20},
							{"overpressure", -1, -20},
							{"overheat", 0, -7},
							{"posttraumatic", 0, -10},
							{"radiation", 0, -50}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "9",
					resistances = {
							{"plasma", -1, -10},
							{"overpressure", 0, -20},
							{"overheat", 0, 5},
							{"posttraumatic", 0, 2},
							{"radiation", 0, -40}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "acid",
					lvl = "10",
					resistances = {
							{"plasma", 0, 15},
							{"overpressure", 0, -5},
							{"overheat", 2, 7},
							{"posttraumatic", 0, 5},
							{"radiation", 0, -40}
					}
				}
			}
		},
		acid_worms = {
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "1",
					resistances = {
				{"plasma", -5, -20},
				{"overpressure", -2, -100},
				{"overheat", 0, -75},
				{"posttraumatic", 0, -60},
				{"radiation", 0, -100}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "2",
					resistances = {
							{"plasma", -5, -15},
							{"overpressure", -2, -95},
							{"overheat", 0, -65},
							{"posttraumatic", 0, -50},
							{"radiation", 0, -80}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "3",
					resistances = {
							{"plasma", -4, -10},
							{"overpressure", -1, -90},
							{"overheat", 0, -55},
							{"posttraumatic", 0, -40},
							{"radiation", 0, -60}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "4",
					resistances = {
							{"plasma", -4, -5},
							{"overpressure", -1, -80},
							{"overheat", 0, -34},
							{"posttraumatic", 0, -30},
							{"radiation", 0, -40}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "5",
					resistances = {
							{"plasma", -2, 0},
							{"overpressure", -1, -74},
							{"overheat", 0, -24},
							{"posttraumatic", 0, -20},
							{"radiation", 0, -20}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "6",
					resistances = {
							{"plasma", 0, 5},
							{"overpressure", 0, -40},
							{"overheat", 0, -20},
							{"posttraumatic", 0, -15},
							{"radiation", 0, -17}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "7",
					resistances = {
							{"plasma", 1, 10},
							{"overpressure", 0, -30},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -10},
							{"radiation", 0, -15}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "8",
					resistances = {
							{"plasma", 3, 15},
							{"overpressure", 0, -20},
							{"overheat", 0, 10},
							{"posttraumatic", 0, 10},
							{"radiation", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "9",
					resistances = {
							{"plasma", 4, 20},
							{"overpressure", 0, -20},
							{"overheat", 0, 24},
							{"posttraumatic", 0, 15},
							{"radiation", 0, -5}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "acid",
					lvl = "10",
					resistances = {
							{"plasma", 5, 25},
							{"overpressure", 0, -5},
							{"overheat", 0, 34},
							{"posttraumatic", 0, 20},
							{"radiation", 0, -5}
					}
				}
			}
		},
		acid_spawners = {
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "1",
					resistances = {
							{"plasma", -5, -100},
							{"overpressure", -5, -150},
							{"overheat", 0, -75},
							{"posttraumatic", 0, -40},
							{"radiation", -5, 0}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "2",
					resistances = {
							{"plasma", -5, -75},
							{"overpressure", -2, -95},
							{"overheat", 0, -65},
							{"posttraumatic", 0, -20},
							{"radiation", -4, 0}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "3",
					resistances = {
							{"plasma", -4, -50},
							{"overpressure", -1, -90},
							{"overheat", 0, -55},
							{"posttraumatic", 0, 5},
							{"radiation", -3, 0}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "4",
					resistances = {
							{"plasma", -4, -25},
							{"overpressure", -1, -80},
							{"overheat", 0, -34},
							{"posttraumatic", 0, 15},
							{"radiation", -2, 0}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "5",
					resistances = {
							{"plasma", -2, 0},
							{"overpressure", -1, -74},
							{"overheat", 0, -33},
							{"posttraumatic", 0, 20},
							{"radiation", -1, 0}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "6",
					resistances = {
							{"plasma", 0, 10},
							{"overpressure", 0, -40},
							{"overheat", 0, -15},
							{"posttraumatic", 0, 40},
							{"radiation", 0, -20}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "7",
					resistances = {
							{"plasma", 0, 25},
							{"overpressure", 0, -30},
							{"overheat", 0, -5},
							{"posttraumatic", 0, 60},
							{"radiation", 0, -15}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "8",
					resistances = {
							{"plasma", 0, 40},
							{"overpressure", 0, -20},
							{"overheat", 0, 20},
							{"posttraumatic", 0, 74.6},
							{"radiation", 0, -15}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "9",
					resistances = {
							{"plasma", 5, 50},
							{"overpressure", 0, -20},
							{"overheat", 0, 40},
							{"posttraumatic", 0, 80},
							{"radiation", 0, -15}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "acid",
					lvl = "10",
					resistances = {
							{"plasma", 5, 60},
							{"overpressure", 0, -5},
							{"overheat", 0, 50},
							{"posttraumatic", 0, 90},
							{"radiation", 0, -15}
					}
				}
			}
		},
		electric_biters = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "1",
					resistances = {
				{"plasma", 4, 12},
				{"overpressure", -3, -50},
				{"overheat", 0, -75},
				{"posttraumatic", 0, -50},
				{"radiation", -3, -100}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "2",
					resistances = {
							{"plasma", 5, 12},
							{"overpressure", -3, -45},
							{"overheat", 0, -65},
							{"posttraumatic", 0, -45},
							{"radiation", -3, -90}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "3",
					resistances = {
							{"plasma", 5, 12},
							{"overpressure", -3, -40},
							{"overheat", 0, -55},
							{"posttraumatic", 0, -35},
							{"radiation", -3, -85}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "4",
					resistances = {
							{"plasma", 7.5, 21.4},
							{"overpressure", -3, -30},
							{"overheat", 0, -34},
							{"posttraumatic", 0, -30},
							{"radiation", -3, -80}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "5",
					resistances = {
							{"plasma", 7.2, 21.4},
							{"overpressure", -1, -30},
							{"overheat", 0, -24},
							{"posttraumatic", 0, -25},
							{"radiation", -2, -75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "6",
					resistances = {
							{"plasma", 8, 21.4},
							{"overpressure", -1, -20},
							{"overheat", 0, -20},
							{"posttraumatic", 0, -20},
							{"radiation", -2, -70}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "7",
					resistances = {
							{"plasma", 8.6, 21.4},
							{"overpressure", 0, -20},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -20},
							{"radiation", -1, -60}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "8",
					resistances = {
							{"plasma", 9.2, 25.6},
							{"overpressure", 0, -15},
							{"overheat", 0, 10},
							{"posttraumatic", 0, -10},
							{"radiation", 0, -50}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "9",
					resistances = {
							{"plasma", 9.9, 25.6},
							{"overpressure", 0, -10},
							{"overheat", 0, 24},
							{"posttraumatic", 0, -10},
							{"radiation", 0, -40}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "electric",
					lvl = "10",
					resistances = {
							{"plasma", 10.2, 25.6},
							{"overpressure", 0, -7},
							{"overheat", 2, 34},
							{"posttraumatic", 0, -7},
							{"radiation", 0, -20}
					}
				}
			}
		},
		electric_spitters = {
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "1",
					resistances = {
							{"plasma", 2, 8},
							{"overpressure", -3, -50},
							{"overheat", 0, -50},
							{"posttraumatic", 0, -50},
							{"radiation", -3, -100}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "2",
					resistances = {
							{"plasma", 2, 8},
							{"overpressure", -3, -45},
							{"overheat", 0, -45},
							{"posttraumatic", 0, -45},
							{"radiation", -3, -90}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "3",
					resistances = {
							{"plasma", 3, 8},
							{"overpressure", -3, -40},
							{"overheat", 0, -35},
							{"posttraumatic", 0, -35},
							{"radiation", -3, -90}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "4",
					resistances = {
							{"plasma", 4.5, 11.4},
							{"overpressure", -3, -30},
							{"overheat", 0, -30},
							{"posttraumatic", 0, -30},
							{"radiation", -2, -75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "5",
					resistances = {
							{"plasma", 4.4, 11.4},
							{"overpressure", -1, -30},
							{"overheat", 0, -20},
							{"posttraumatic", 0, -25},
							{"radiation", -2, -75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "6",
					resistances = {
							{"plasma", 6.7, 11.4},
							{"overpressure", -1, -20},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -20},
							{"radiation", -2, -75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "7",
					resistances = {
							{"plasma", 6.4, 11.4},
							{"overpressure", 0, -2},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -20},
							{"radiation", -2, -50}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "8",
					resistances = {
							{"plasma", 7.6, 15.6},
							{"overpressure", 0, 0},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -10},
							{"radiation", -2, -50}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "9",
					resistances = {
							{"plasma", 7, 15.6},
							{"overpressure", 0, -10},
							{"overheat", 0, -10},
							{"posttraumatic", 0, -10},
							{"radiation", -1, -40}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "electric",
					lvl = "10",
					resistances = {
							{"plasma", 7.8, 15.6},
							{"overpressure", 0, -7},
							{"overheat", 2, -7},
							{"posttraumatic", 0, -7},
							{"radiation", -1, -40}
					}
				}
			}		
		},
		electric_worms = {
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "1",
					resistances = {
							{"plasma", 4, 10},
							{"overpressure", 0, -75},
							{"overheat", 0, -50},
							{"posttraumatic", 0, 2},
							{"radiation", -10, -110}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "2",
					resistances = {
							{"plasma", 4, 10},
							{"overpressure", 0, -60},
							{"overheat", 0, -40},
							{"posttraumatic", 0, 5},
							{"radiation", -10, -100}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "3",
					resistances = {
							{"plasma", 7, 10},
							{"overpressure", 0, -50},
							{"overheat", 0, -30},
							{"posttraumatic", 0, 7},
							{"radiation", -10, -90}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "4",
					resistances = {
							{"plasma", 8.5, 51.4},
							{"overpressure", 0, -50},
							{"overheat", 0, -20},
							{"posttraumatic", 0, 7},
							{"radiation", -10, -80}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "5",
					resistances = {
							{"plasma", 8.4, 15.4},
							{"overpressure", 0, -40},
							{"overheat", 0, -10},
							{"posttraumatic", 0, 7},
							{"radiation", -7, -70}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 17.4},
							{"overpressure", 0, -40},
							{"overheat", 0, 5},
							{"posttraumatic", 0, 17},
							{"radiation", -7, -50}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 17.4},
							{"overpressure", 0, -30},
							{"overheat", 0, 7},
							{"posttraumatic", 0, 17},
							{"radiation", -7, -50}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "8",
					resistances = {
							{"plasma", 10.6, 21.6},
							{"overpressure", 0, -30},
							{"overheat", 0, 13},
							{"posttraumatic", 0, 27},
							{"radiation", -4, -40}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "9",
					resistances = {
							{"plasma", 10, 21.6},
							{"overpressure", 0, -10},
							{"overheat", 0, 17},
							{"posttraumatic", 0, 27},
							{"radiation", -4, -30}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "electric",
					lvl = "10",
					resistances = {
							{"plasma", 11.8, 21.6},
							{"overpressure", 0, -10},
							{"overheat", 4, 24},
							{"posttraumatic", 0, 30},
							{"radiation", -2, -20}
					}
				}
			}
		},
		electric_spawners = {
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "1",
					resistances = {
							{"plasma", 2, 17},
							{"overpressure", -5, -120},
							{"overheat", -5, -40},
							{"posttraumatic", 0, 5},
							{"radiation", -5, -100}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "2",
					resistances = {
							{"plasma", 2, 17},
							{"overpressure", -2, -100},
							{"overheat", -2, -30},
							{"posttraumatic", 0, 10},
							{"radiation", -4, -80}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "3",
					resistances = {
							{"plasma", 7, 17},
							{"overpressure", -1, -90},
							{"overheat", -1, -20},
							{"posttraumatic", 0, 5},
							{"radiation", -3, -75}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 24.4},
							{"overpressure", -1, -70},
							{"overheat", 0, -10},
							{"posttraumatic", 0, 17},
							{"radiation", -2, -70}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 24.4},
							{"overpressure", -1, -40},
							{"overheat", 0, 10},
							{"posttraumatic", 0, 24},
							{"radiation", -1, -50}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 24.4},
							{"overpressure", 0, -20},
							{"overheat", 0, 14},
							{"posttraumatic", 0, 27},
							{"radiation", 0, -40}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 31.4},
							{"overpressure", 0, -10},
							{"overheat", 0, 17},
							{"posttraumatic", 0, 30},
							{"radiation", 0, -30}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 31.6},
							{"overpressure", 2, 7},
							{"overheat", 0, 20},
							{"posttraumatic", 0, 74.6},
							{"radiation", 0, -20}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "9",
					resistances = {
							{"plasma", 12, 35.6},
							{"overpressure", 5, 11},
							{"overheat", 0, 24},
							{"posttraumatic", 0, 80},
							{"radiation", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "electric",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 35.6},
							{"overpressure", 5, 17},
							{"overheat", 0, 40},
							{"posttraumatic", 0, 90},
							{"radiation", 0, -5}
					}
				}
			}
		},
		laser_biters = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "1",
					resistances = {
							{"plasma", 0, 8},
							{"overpressure", -3, -14},
							{"overheat", 0, 14},
							{"posttraumatic", 0, -20}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "2",
					resistances = {
							{"plasma", 0, 8},
							{"overpressure", -3, 0},
							{"overheat", 0, 17},
							{"posttraumatic", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "3",
					resistances = {
							{"plasma", 0, 8},
							{"overheat", 7, 20},
							{"posttraumatic", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "4",
					resistances = {
							{"plasma", 5.5, 11.4},
							{"overheat", 8, 24},
							{"posttraumatic", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "5",
					resistances = {
							{"plasma", 5.2, 11.4},
							{"overheat", 9, 27},
							{"posttraumatic", 0, -7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "6",
					resistances = {
							{"plasma", 5, 11.4},
							{"overheat", 10.5, 71.4},
							{"posttraumatic", 0, -7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "7",
					resistances = {
							{"plasma", 6.6, 11.4},
							{"overheat", 9.7, 71.4},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "8",
					resistances = {
							{"plasma", 7.2, 17.6},
							{"overheat", 9.4, 71.4},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "9",
					resistances = {
							{"plasma", 7.9, 17.6},
							{"overheat", 11.9, 75.6},
							{"posttraumatic", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "laser",
					lvl = "10",
					resistances = {
							{"plasma", 8.2, 20.6},
							{"overheat", 13.2, 75.6},
							{"posttraumatic", 0, 24}
					}
				}
			}
		},
		laser_spitters = {
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "1",
					resistances = {
							{"plasma", 0, 5},
							{"overpressure", -3, -17},
							{"overheat", -3, -14},
							{"posttraumatic", 0, -34}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "2",
					resistances = {
							{"plasma", 0, 5},
							{"overpressure", -3, -15},
							{"overheat", -3, 0},
							{"posttraumatic", 0, -20}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "3",
					resistances = {
							{"plasma", 0, 7},
							{"overpressure", -3, -10},
							{"overheat", 7, 20},
							{"posttraumatic", 0, -20}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "4",
					resistances = {
							{"plasma", 0, 7.1},
							{"overpressure", -3, -7},
							{"overheat", 8, 24},
							{"posttraumatic", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "5",
					resistances = {
							{"plasma", 0, 7.1},
							{"overheat", 9, 27},
							{"posttraumatic", 0, -10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "6",
					resistances = {
							{"plasma", 1, 7.2},
							{"overheat", 10.5, 71.4},
							{"posttraumatic", 0, -7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "7",
					resistances = {
							{"plasma", 2, 10.2},
							{"overheat", 9.7, 71.4},
							{"posttraumatic", 0, -5}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "8",
					resistances = {
							{"plasma", 2, 10.6},
							{"overheat", 9.4, 71.4},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "9",
					resistances = {
							{"plasma", 4, 10.6},
							{"overheat", 11.4, 75.6},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "laser",
					lvl = "10",
					resistances = {
							{"plasma", 4.8, 11.6},
							{"overheat", 12.6, 75.6},
							{"posttraumatic", 0, 17}
					}
				}
			}
		},
		laser_worms = {
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "1",
					resistances = {
							{"plasma", 4, 10},
							{"overpressure", 0, -10},
							{"overheat", -3, -15},
							{"posttraumatic", 0, 2}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "2",
					resistances = {
							{"plasma", 4, 10},
							{"overpressure", 0, -5},
							{"overheat", -3, -5},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "3",
					resistances = {
							{"plasma", 5, 10},
							{"overheat", 7, 20},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "4",
					resistances = {
							{"plasma", 5.5, 10.4},
							{"overheat", 8, 24},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "5",
					resistances = {
							{"plasma", 5.4, 13.4},
							{"overheat", 9, 27},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "6",
					resistances = {
							{"plasma", 7.7, 13.4},
							{"overheat", 10.5, 71.4},
							{"posttraumatic", 0, 15}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "7",
					resistances = {
							{"plasma", 7.4, 14.4},
							{"overheat", 9.7, 71.4},
							{"posttraumatic", 0, 20}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "8",
					resistances = {
							{"plasma", 10.6, 17.6},
							{"overheat", 9.4, 71.4},
							{"posttraumatic", 0, 25}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "9",
					resistances = {
							{"plasma", 10, 17.6},
							{"overheat", 11.9, 75.6},
							{"posttraumatic", 0, 30}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "laser",
					lvl = "10",
					resistances = {
							{"plasma", 11.8, 24.6},
							{"overheat", 13.2, 75.6},
							{"posttraumatic", 0, 45}
					}
				}
			}
		},
		laser_spawners = {
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "1",
					resistances = {
							{"plasma", 4, 12},
							{"overpressure", -5, -120},
							{"overheat", -5, -40},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "2",
					resistances = {
							{"plasma", 4, 12},
							{"overpressure", -2, -100},
							{"overheat", -2, -30},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "3",
					resistances = {
							{"plasma", 5, 12},
							{"overpressure", -1, -90},
							{"overheat", -1, -20},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "4",
					resistances = {
							{"plasma", 5.5, 14.4},
							{"overpressure", -1, -70},
							{"overheat", 0, -10},
							{"posttraumatic", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "5",
					resistances = {
							{"plasma", 5.4, 14.4},
							{"overpressure", -1, -40},
							{"overheat", 0, 10},
							{"posttraumatic", 0, 24}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "6",
					resistances = {
							{"plasma", 7.7, 17.4},
							{"overpressure", 0, -20},
							{"overheat", 0, 14},
							{"posttraumatic", 0, 27}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 20.4},
							{"overpressure", 0, -10},
							{"overheat", 0, 17},
							{"posttraumatic", 0, 30}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 20.6},
							{"overpressure", 2, 7},
							{"overheat", 0, 20},
							{"posttraumatic", 0, 74.6}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "9",
					resistances = {
							{"plasma", 12, 24.6},
							{"overpressure", 5, 11},
							{"overheat", 0, 24},
							{"posttraumatic", 0, 80}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "laser",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 27.6},
							{"overpressure", 5, 17},
							{"overheat", 0, 40},
							{"posttraumatic", 0, 90}
					}
				}
			}
		},
		fire_biters = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "1",
					resistances = {
							{"plasma", 7, 68},
							{"overpressure", -3, -14},
							{"overheat", 0, 14}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "2",
					resistances = {
							{"plasma", 8, 68},
							{"overpressure", -3, 0},
							{"overheat", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "3",
					resistances = {
							{"plasma", 8, 68},
							{"overheat", 7, 20}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 71.4},
							{"overheat", 8, 24}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "5",
					resistances = {
							{"plasma", 10.2, 71.4},
							{"overheat", 9, 27}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "6",
					resistances = {
							{"plasma", 11, 71.4},
							{"overheat", 10.5, 71.47}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "7",
					resistances = {
							{"plasma", 10.6, 71.4},
							{"overheat", 9.7, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "8",
					resistances = {
							{"plasma", 11.2, 75.6},
							{"overheat", 9.4, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "9",
					resistances = {
							{"plasma", 11.9, 75.6},
							{"overheat", 11.9, 75.6}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "fire",
					lvl = "10",
					resistances = {
							{"plasma", 13.2, 75.6},
							{"overheat", 13.2, 75.6}
					}
				}
			}
		},
		fire_spitters = {
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "1",
					resistances = {
							{"plasma", 4, 68},
							{"overpressure", -3, -17},
							{"overheat", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "2",
					resistances = {
							{"plasma", 4, 68},
							{"overpressure", -3, -15},
							{"overheat", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "3",
					resistances = {
							{"plasma", 7, 68},
							{"overpressure", -3, -10},
							{"overheat", 7, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 70.1},
							{"overpressure", -3, -7},
							{"overheat", 10.5, 70}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 70.1},
							{"overheat", 10.4, 70.1},
							{"posttraumatic", 0, 2}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 72.2},
							{"overheat", 9.7, 72.2},
							{"posttraumatic", 0, 2}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 72.2},
							{"overheat", 9.7, 71.4},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 72.6},
							{"overheat", 9.4, 71.4},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "9",
					resistances = {
							{"plasma", 12, 72.6},
							{"overheat", 11.4, 75.6},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "fire",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 72.6},
							{"overheat", 12.6, 75.6},
							{"posttraumatic", 0, 10}
					}
				}
			}
		},
		fire_worms = {
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "1",
					resistances = {
							{"plasma", 4, 68},
							{"overpressure", 0, -10},
							{"overheat", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "2",
					resistances = {
							{"plasma", 4, 68},
							{"overpressure", 0, -5},
							{"overheat", 7, 68}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "3",
					resistances = {
							{"plasma", 7, 68},
							{"overheat", 10.5, 71.4}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 71.4},
							{"overheat", 10.5, 71.4},
							{"posttraumatic", 0, 2}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 71.4},
							{"overheat", 10.4, 71.4},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 71.4},
							{"overheat", 9.7, 71.4},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 71.4},
							{"overheat", 9.4, 71.4},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 75.6},
							{"overheat", 12.6, 75.6},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "9",
					resistances = {
							{"plasma", 12, 75.6},
							{"overheat", 11.9, 75.6},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "fire",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 75.6},
							{"overheat", 13.2, 75.6},
							{"posttraumatic", 0, 20}
					}
				}
			}
		},
		fire_spawners = {
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "1",
					resistances = {
							{"plasma", 4, 68},
							{"overpressure", -5, -120},
							{"overheat", 4, 68},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "2",
					resistances = {
							{"plasma", 4, 68},
							{"overpressure", -2, -100},
							{"overheat", 4, 68},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "3",
					resistances = {
							{"plasma", 7, 68},
							{"overpressure", -1, -90},
							{"overheat", 7, 68},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 71.4},
							{"overpressure", -1, -70},
							{"overheat", 10.5, 71.4},
							{"posttraumatic", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 71.4},
							{"overpressure", -1, -40},
							{"overheat", 10.4, 71.4},
							{"posttraumatic", 0, 24}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 71.4},
							{"overpressure", 0, -20},
							{"overheat", 9.7, 71.4},
							{"posttraumatic", 0, 27}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 71.4},
							{"overpressure", 0, -10},
							{"overheat", 9.4, 71.4},
							{"posttraumatic", 0, 30}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 75.6},
							{"overpressure", 2, 7},
							{"overheat", 12.6, 75.6},
							{"posttraumatic", 0, 74.6}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "9",
					resistances = {
							{"plasma", 12, 75.6},
							{"overpressure", 5, 11},
							{"overheat", 12, 75.6},
							{"posttraumatic", 0, 80}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "fire",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 75.6},
							{"overpressure", 5, 17},
							{"overheat", 12.8, 75.6},
							{"posttraumatic", 0, 90}
					}
				}
			}
		},
		inferno_base = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					resistances = {
				{"overheat", 0, 100},
				{"overpressure", 5, 37}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					resistances = {
							{"overheat", 0, 100},
							{"overpressure", 5, 30}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					resistances = {
							{"overheat", 0, 100},
							{"overpressure", 5, 44}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					resistances = {
							{"overheat", 0, 100},
							{"overpressure", 5, 44}
					}
				}
			}
		},
		inferno_biters = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "1",
					resistances = {
							{"plasma", 7, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "2",
					resistances = {
							{"plasma", 8, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "3",
					resistances = {
							{"plasma", 8, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "5",
					resistances = {
							{"plasma", 10.2, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "6",
					resistances = {
							{"plasma", 11, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "7",
					resistances = {
							{"plasma", 10.6, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "8",
					resistances = {
							{"plasma", 11.2, 75.6}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "9",
					resistances = {
							{"plasma", 11.9, 75.6}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "inferno",
					lvl = "10",
					resistances = {
							{"plasma", 13.2, 75.6}
					}
				}
			}
		},
		inferno_spitters = {
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "1",
					resistances = {
							{"plasma", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "2",
					resistances = {
							{"plasma", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "3",
					resistances = {
							{"plasma", 7, 68}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 70.1}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 70.1}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 72.2}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 72.2}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 72.6}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "9",
					resistances = {
							{"plasma", 12, 72.6}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "inferno",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 72.4}
					}
				}
			}
		},
		inferno_worms = {
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "1",
					resistances = {
							{"plasma", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "2",
					resistances = {
							{"plasma", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "3",
					resistances = {
							{"plasma", 7, 68}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 71.4}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 71.4}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 71.4}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 71.4}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 75.6}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "9",
					resistances = {
							{"plasma", 12, 75.6}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "inferno",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 75.6}
					}
				}
			}
		},
		inferno_spawners = {
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "1",
					resistances = {
							{"plasma", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "2",
					resistances = {
							{"plasma", 4, 68}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "3",
					resistances = {
							{"plasma", 7, 68}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "4",
					resistances = {
							{"plasma", 10.5, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "5",
					resistances = {
							{"plasma", 10.4, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "6",
					resistances = {
							{"plasma", 9.7, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "7",
					resistances = {
							{"plasma", 9.4, 71.4}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "8",
					resistances = {
							{"plasma", 12.6, 75.6}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "9",
					resistances = {
							{"plasma", 12, 75.6}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "inferno",
					lvl = "10",
					resistances = {
							{"plasma", 12.8, 75.6}
					}
				}
			}
		},
		nuclear_base = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "nuclear",
					resistances = {
							{"radiation", 0, 100},
							{"overpressure", 5, 50}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "nuclear",
					resistances = {
							{"radiation", 0, 100},
							{"overpressure", 5, 50}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "nuclear",
					resistances = {
							{"radiation", 0, 100},
							{"overpressure", 5, 50}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "nuclear",
					resistances = {
							{"radiation", 0, 100},
							{"overpressure", 5, 50}
					}
				}
			}
		},
		troll_base = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "troll",
					resistances = {
							{"posttraumatic", 0, 100},
							{"overpressure", 7, 75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "troll",
					resistances = {
							{"posttraumatic", 0, 100},
							{"overpressure", 5, 75}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "troll",
					resistances = {
							{"posttraumatic", 0, 100},
							{"overpressure", 15, 75}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "troll",
					resistances = {
							{"posttraumatic", 0, 100},
							{"overpressure", 15, 75}
					}
				}
			}
		},
		physical_base = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					resistances = {
							{"radiation", 5, 24},
							{"overpressure", 7, 75}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					resistances = {
							{"radiation", 2, 20},
							{"overpressure", 5, 75}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					resistances = {
							{"radiation", 10, 30},
							{"overpressure", 15, 75}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					resistances = {
							{"radiation", 10, 45},
							{"overpressure", 15, 75}
					}
				}
			}
		},
		physical_biters = {
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "1",
					resistances = {
							{"plasma", 4, 40},
							{"overheat", 5, 50},
							{"posttraumatic", 0, 2}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "2",
					resistances = {
							{"plasma", 4, 40},
							{"overheat", 5, 50},
							{"posttraumatic", 0, 2}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "3",
					resistances = {
							{"plasma", 7, 40},
							{"overheat", 7, 54},
							{"posttraumatic", 0, 4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "4",
					resistances = {
							{"plasma", 10, 45},
							{"overheat", 11, 70},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "5",
					resistances = {
							{"plasma", 10, 45},
							{"overheat", 14, 70},
							{"posttraumatic", 0, 7}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "6",
					resistances = {
							{"plasma", 12, 45},
							{"overheat", 14, 70},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "7",
					resistances = {
							{"plasma", 12, 45},
							{"overheat", 14, 72},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "8",
					resistances = {
							{"plasma", 12, 45},
							{"overheat", 17, 72},
							{"posttraumatic", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "9",
					resistances = {
							{"plasma", 13, 47},
							{"overheat", 17, 75},
							{"posttraumatic", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "biter",
					ent_class = "physical",
					lvl = "10",
					resistances = {
							{"plasma", 13, 47},
							{"overheat", 18, 75},
							{"posttraumatic", 0, 21}
					}
				}
			}
		},
		physical_spitters = {
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "1",
					resistances = {
							{"plasma", 4, 25},
							{"overheat", 1, 40},
							{"posttraumatic", 0, 1}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "2",
					resistances = {
							{"plasma", 4, 25},
							{"overheat", 1, 41},
							{"posttraumatic", 0, 1}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "3",
					resistances = {
							{"plasma", 5, 35},
							{"overheat", 4, 41},
							{"posttraumatic", 0, 4}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "4",
					resistances = {
							{"plasma", 5, 35},
							{"overheat", 4, 44},
							{"posttraumatic", 0, 5}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "5",
					resistances = {
							{"plasma", 5, 35},
							{"overheat", 4, 45},
							{"posttraumatic", 0, 6}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "6",
					resistances = {
							{"plasma", 7, 35},
							{"overheat", 8, 45},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "7",
					resistances = {
							{"plasma", 7, 45},
							{"overheat", 8, 47},
							{"posttraumatic", 0, 11}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "8",
					resistances = {
							{"plasma", 7, 45},
							{"overheat", 10, 50},
							{"posttraumatic", 0, 14}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "9",
					resistances = {
							{"plasma", 10, 47},
							{"overheat", 11, 60},
							{"posttraumatic", 0, 15}
					}
				}
			},
			{
				{
					ent_type = "unit",
					ent_name = "spitter",
					ent_class = "physical",
					lvl = "10",
					resistances = {
							{"plasma", 10, 47},
							{"overheat", 12, 70},
							{"posttraumatic", 0, 17}
					}
				}
			}
		},
		physical_worms = {
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "1",
					resistances = {
							{"plasma", 4, 50},
							{"overheat", 7, 60},
							{"posttraumatic", 0, 10}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "2",
					resistances = {
							{"plasma", 4, 50},
							{"overheat", 7, 68},
							{"posttraumatic", 0, 17}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "3",
					resistances = {
							{"plasma", 7, 50},
							{"overheat", 7, 68},
							{"posttraumatic", 5, 17}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "4",
					resistances = {
							{"plasma", 10, 50},
							{"overheat", 10, 68},
							{"posttraumatic", 10, 27}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "5",
					resistances = {
							{"plasma", 10, 50},
							{"overheat", 10, 71},
							{"posttraumatic", 10, 27}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "6",
					resistances = {
							{"plasma", 10, 50},
							{"overheat", 10, 71},
							{"posttraumatic", 10, 37}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "7",
					resistances = {
							{"plasma", 10, 50},
							{"overheat", 14, 72},
							{"posttraumatic", 10, 40}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "8",
					resistances = {
							{"plasma", 10, 50},
							{"overheat", 18, 75},
							{"posttraumatic", 15, 50}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "9",
					resistances = {
							{"plasma", 10, 50},
							{"overheat", 18, 75},
							{"posttraumatic", 15, 70}
					}
				}
			},
			{
				{
					ent_type = "turret",
					ent_name = "worm",
					ent_class = "physical",
					lvl = "10",
					resistances = {
							{"plasma", 10, 75},
							{"overheat", 21, 75},
							{"posttraumatic", 17, 70}
					}
				}
			}
		},
		physical_spawners = {
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "1",
					resistances = {
							{"plasma", 4, 55},
							{"overheat", 20, 68},
							{"posttraumatic", 10, 40}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "2",
					resistances = {
							{"plasma", 4, 55},
							{"overheat", 20, 68},
							{"posttraumatic", 10, 40}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "3",
					resistances = {
							{"plasma", 7, 55},
							{"overheat", 20, 71},
							{"posttraumatic", 10, 45}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "4",
					resistances = {
							{"plasma", 10, 60},
							{"overheat", 20, 71},
							{"posttraumatic", 17, 45}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "5",
					resistances = {
							{"plasma", 11, 60},
							{"overheat", 20, 74},
							{"posttraumatic", 17, 50}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "6",
					resistances = {
							{"plasma", 15, 75},
							{"overheat", 20, 75},
							{"posttraumatic", 20, 50}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "7",
					resistances = {
							{"plasma", 15, 75},
							{"overheat", 20, 75},
							{"posttraumatic", 24, 60}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "8",
					resistances = {
							{"plasma", 17, 75},
							{"overheat", 27, 75},
							{"posttraumatic", 24, 74}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "9",
					resistances = {
							{"plasma", 20, 75},
							{"overheat", 27, 75},
							{"posttraumatic", 24, 80}
					}
				}
			},
			{
				{
					ent_type = "unit-spawner",
					ent_class = "physical",
					lvl = "10",
					resistances = {
							{"plasma", 45, 75},
							{"overheat", 27, 75},
							{"posttraumatic", 27, 90}
					}
				}
			}
		}
	}
for _, key in pairs(rampants_resistance_data) do
		for _, resistance_data in ipairs(key) do
				table.insert(prometheus_resistances_table, resistance_data)
		end
end
end

