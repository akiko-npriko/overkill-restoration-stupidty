Hooks:PostHook(WeaponFactoryTweakData, "init", "dutch_madsen_weaponfactorytweakdata_init", function(self)

	self.parts.wpn_fps_lmg_madsen_mg_receiver.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		fire = "recoil",
		fire_steelsight = "recoil"
		}
	self.parts.wpn_fps_lmg_madsen_mg_magazine.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",

		}
	self.parts.wpn_fps_lmg_madsen_mg_xmag.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		}

end)