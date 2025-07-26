Hooks:PostHook( AssetsTweakData, "init", "tj_htsb_assets", function(self, tweak_data)
	
	self.tj_htsb_asset_planks = {
		name_id = "menu_tj_htsb_asset_planks",
		texture = "guis/tj_htsb_asset_planks",
		stages = {
			"tj_htsb"
		},
		visible_if_locked = true,
		unlock_desc_id = "menu_tj_htsb_asset_planks_desc",
		no_mystery = true,
		money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 8)
	}
	
end)