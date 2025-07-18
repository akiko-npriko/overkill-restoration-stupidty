Hooks:PostHook(WeaponFactoryTweakData, "init", "BakerRepeater_TweakData_init", function(self)


 self.parts.wpn_fps_snp_baker_body.animations = {
		fire = "recoil",
		fire_steelsight = "recoil",
		reload_exit = "reload_exit"
		}

 self.parts.wpn_fps_snp_baker_mag.animations = {
		reload = "reload"
		}

end )