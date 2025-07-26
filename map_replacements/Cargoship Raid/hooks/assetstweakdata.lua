--Adding custom Assets ~by MiamiCenter
Hooks:PostHook(AssetsTweakData, "init", "xanax_assets", function (self, ...)

	self.hardcore = {
		name_id = "xanax_hardcore",
		unlock_desc_id = "xanax_hardcore_desc",
		texture = "levels/mods/Xanax/textures/assets_hardcore",
		stages = {"Xanax"},
		visible_if_locked = true,
		no_mystery = true,
		money_lock = 50000,
		server_lock = true
	}
	self.xanax_disable_box = {
		name_id = "xanax_disable_box",
		unlock_desc_id = "xanax_disable_box_desc",
		texture = "levels/mods/Xanax/textures/xanax_disable_box",
		stages = {"Xanax"},
		visible_if_locked = true,
		no_mystery = true,
		money_lock = 10000,
		server_lock = true
	}
end)