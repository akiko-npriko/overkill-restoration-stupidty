Hooks:PostHook(PrePlanningTweakData,"init","init_glb",function(self)

	self:_create_locations(tweak_data)

	self.types.glb_van_escape = {
		name_id = "menu_pp_asset_glb_van_escape",
		desc_id = "menu_pp_asset_glb_van_escape_desc",
		plan = "escape_plan",
		pos_not_important = false,
		category = "escape_plan",
		icon = 54,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_12",
		prio = 3
	}
	
	
	
	self.types.glb_escape_helicopter_loud = {
		name_id = "menu_pp_escape_glb_helicopter_loud",
		desc_id = "menu_pp_escape_glb_helicopter_loud_desc",
		plan = "escape_plan",
		pos_not_important = false,
		category = "escape_plan",
		icon = 54,
		total = 1,
		cost = 8000,
		budget_cost = 5,
		post_event = "preplan_17",
		prio = 3
	}
	
		self.types.glb_escape_boat = {
		name_id = "menu_pp_escape_glb_boat",
		desc_id = "menu_pp_escape_glb_boat_desc",
		plan = "escape_plan",
		pos_not_important = false,
		category = "escape_plan",
		icon = 54,
		total = 1,
		cost = 8000,
		budget_cost = 6,
		post_event = "preplan_17",
		prio = 3
	}
	
	
	
	
		self.types.glb_vault_thermite = {
		name_id = "menu_pp_glb_vault_thermite",
		desc_id = "menu_pp_glb_vault_thermite_desc",
		plan = "vault_plan",
		pos_not_important = true,
		category = "vault_plan",
		icon = 51,
		total = 1,
		cost = 8000,
		budget_cost = 5,
		post_event = "preplan_02",
		prio = 1
	}
	
	
	
		self.types.glb_loud_entry_with_c4 = {
		name_id = "menu_pp_asset_glb_entry_with_c4",
		desc_id = "menu_pp_asset_glb_entry_with_c4_desc",
		plan = "vault_plan",
		pos_not_important = true,
		category = "vault_plan",
		icon = 95,
		cost = 8000,
		budget_cost = 6,
		post_event = "",
		prio = 3
	}
	
		self.types.glb_vault_big_drill = {
		name_id = "menu_pp_vault_big_drill",
		desc_id = "menu_pp_vault_big_drill_desc",
		plan = "vault_plan",
		pos_not_important = true,
		category = "vault_plan",
		icon = 12,
		total = 1,
		cost = 0,
		budget_cost = 0,
		post_event = "preplan_17",
		prio = 5
	}
	
	
		self.types.glb_garbage_truck = {
		name_id = "menu_pp_asset_chas_garbage_truck",
		desc_id = "menu_pp_asset_chas_garbage_truck_desc",
		category = "hired_help",
		pos_not_important = false,
		icon = 102,
		total = 1,
		post_event = "preplan_16",
		prio = 3,
		cost = 8000,
		budget_cost = 6
	}
	
	
end)

Hooks:PostHook(PrePlanningTweakData,"_create_locations","_glb",function(self)

	self.locations.glb = {
		mission_briefing_texture = "textures/Outside",
		total_budget = 10,
		default_plans = {
			escape_plan = "glb_van_escape",
			vault_plan = "glb_vault_big_drill"
		},
			{
			texture = "textures/Outside",
			name_id = "menu_pp_glb_a",
			rotation = 0,
			map_size = 1,
			map_x = 0,
			map_y = 0,
			x1 = -1282,
			y1 = -4687,
			x2 = 7198,
			y2 = 3645,
			custom_points = {}
		},	
		{
			texture = "textures/FirstFloor",
			name_id = "menu_pp_glb_b",
			rotation = 0,
			map_size = 1,
			map_x = 1,
			map_y = 0,
			x1 = -1282,
			y1 = -4687,
			x2 = 7198,
			y2 = 3645,
			custom_points = {}
		},
	
		{
			texture = "textures/SecondFloor",
			name_id = "menu_pp_glb_c",
			rotation = 0,
			map_size = 1,
			map_x = -1.0,
			map_y = 0.0,
			x1 = -1282,
			y1 = -4687,
			x2 = 7198,
			y2 = 3645,
			custom_points = {}
		},

		start_location = {
			group = "a",
			zoom = 1,
			x = 1024,
			y = 1024
		}
	}
	
	
	
	
end)