Hooks:PostHook(WeaponTweakData, "init", "x_FMG9Init", function(self)
	if not self.fmgnine and self.x_fmgnine then
		self.x_fmgnine.use_data.selection_index = 3
		log("[ERROR] Akimbo FMG-9: Base FMG-9 mod not found!")
	end
end)