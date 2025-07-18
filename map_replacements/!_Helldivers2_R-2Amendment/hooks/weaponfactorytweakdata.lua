Hooks:PostHook(WeaponFactoryTweakData, "init", "r2_amendment_weaponfactorytweakdata_init", function(self)
	
	self.parts.wpn_fps_ass_r2_mag.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload"
	}
	self.parts.wpn_fps_ass_r2_receiver.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		fire = "recoil",
		fire_steelsight = "recoil"
	}

	
end)

