Hooks:PostHook(WeaponFactoryTweakData, "init", "toz81_weaponfactorytweakdata_init", function(self)

	self.wpn_fps_pis_toz81.animations = {
		fire = "recoil",
		fire_steelsight = "recoil",
		reload = "reload_not_empty",
		reload_not_empty = "reload_not_empty"
	}
	
	self.parts.wpn_fps_pis_toz81_m_shells.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload_not_empty"
	}
	self.parts.wpn_fps_pis_toz81_m_bullets.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload_not_empty"
	}

	
end)

