Hooks:PostHook(AssetsTweakData, "init", "init_lit_assets", function(self, tweak_data)

	self.lit_shortcut = {
		name_id = "lit_shortcut_name",
		unlock_desc_id = "lit_shortcut_desc",
		texture = "textures/lit_shortcut",
		money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_medium", 2),
		no_mystery = true
	}

	self.lit_equipment = {
		name_id = "lit_equipment_name",
		unlock_desc_id = "lit_equipment_desc",
		texture = "textures/lit_equipment",
		money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_medium", 3),
		no_mystery = true
	}

end)