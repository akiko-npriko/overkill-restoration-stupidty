
if not Global.level_data then return end
if Global.level_data.level_id ~= "ruswl" then return end

Hooks:PostHook(AssetsTweakData, "_init_risk_assets", "russia_police_assets", function(self, tweak_data)
	
	table.insert(self.risk_pd.exclude_stages, "ruswl")
	table.insert(self.risk_swat.exclude_stages, "ruswl")
	table.insert(self.risk_fbi.exclude_stages, "ruswl")
	table.insert(self.risk_death_squad.exclude_stages, "ruswl")
	table.insert(self.risk_easy_wish.exclude_stages, "ruswl")
	table.insert(self.risk_death_wish.exclude_stages, "ruswl")
	table.insert(self.risk_sm_wish.exclude_stages, "ruswl")
	
	self.russia_police = {
		name_id = "menu_asset_russian_responders",
		texture = "guis/dlcs/mad/textures/pd2/mission_briefing/assets/mad_russian_merc",
		stages = {"ruswl"}
	}
	
end)




Hooks:PostHook(AssetsTweakData, "_init_assets", "russia_assets", function(self, tweak_data)
	
	self.russia_backup = {
		name_id = "menu_asset_russia_backup",
		texture = "guis/russia_backup",
		stages = {"ruswl"},
		visible_if_locked = true,
		unlock_desc_id = "menu_asset_russia_backup_desc",
		no_mystery = true,
		money_lock = tweak_data:get_value("money_manager", "mission_asset_cost_medium", 4)
	}
	
end)