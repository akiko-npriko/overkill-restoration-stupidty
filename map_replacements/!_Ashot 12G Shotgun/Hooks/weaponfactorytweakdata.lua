Hooks:PostHook(WeaponFactoryTweakData, "init", "ashot", function(self)
	self.parts.wpn_fps_sho_ashot_g_stocked.override_weapon = {
		use_stance = "huntsman",
		weapon_hold = "huntsman",
		animations = {
			reload_name_id = "new_raging_bull"
		}
	}
end)