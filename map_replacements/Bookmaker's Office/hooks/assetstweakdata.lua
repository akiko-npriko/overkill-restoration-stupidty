Hooks:PostHook( AssetsTweakData, "_init_assets", "rgbo_new_assets", function(self, tweak_data)
    self.rgbo_asset_toolbag = {}
	self.rgbo_asset_toolbag.name_id = "rgbo_asset_toolbag_name"
	self.rgbo_asset_toolbag.texture = "guis/custom_asset/rgbo_asset_toolbag"
	self.rgbo_asset_toolbag.stages = {
		"bookmakers_office"
	}
	self.rgbo_asset_toolbag.visible_if_locked = true
	self.rgbo_asset_toolbag.unlock_desc_id = "rgbo_asset_toolbag_desc"
	self.rgbo_asset_toolbag.no_mystery = true
	self.rgbo_asset_toolbag.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 7)
	
	self.rgbo_asset_few_civil = {}
	self.rgbo_asset_few_civil.name_id = "rgbo_asset_few_civil_name"
	self.rgbo_asset_few_civil.texture = "guis/custom_asset/rgbo_asset_few_civil"
	self.rgbo_asset_few_civil.stages = {
		"bookmakers_office"
	}
	self.rgbo_asset_few_civil.visible_if_locked = true
	self.rgbo_asset_few_civil.unlock_desc_id = "rgbo_asset_few_civil_desc"
	self.rgbo_asset_few_civil.no_mystery = true
	self.rgbo_asset_few_civil.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 3)
	
	self.rgbo_keycard = {}
	self.rgbo_keycard.name_id = "rgbo_keycard_name"
	self.rgbo_keycard.texture = "guis/custom_asset/rgbo_keycard"
	self.rgbo_keycard.stages = {
		"bookmakers_office"
	}
	self.rgbo_keycard.visible_if_locked = true
	self.rgbo_keycard.unlock_desc_id = "rgbo_keycard_desc"
	self.rgbo_keycard.no_mystery = true
	self.rgbo_keycard.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 4)
	
	self.rgbo_loot_vent = {}
	self.rgbo_loot_vent.name_id = "rgbo_loot_vent_name"
	self.rgbo_loot_vent.texture = "guis/custom_asset/rgbo_loot_vent"
	self.rgbo_loot_vent.stages = {
		"bookmakers_office"
	}
	self.rgbo_loot_vent.visible_if_locked = true
	self.rgbo_loot_vent.unlock_desc_id = "rgbo_loot_vent_desc"
	self.rgbo_loot_vent.no_mystery = true
	self.rgbo_loot_vent.money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_small", 5)
end )