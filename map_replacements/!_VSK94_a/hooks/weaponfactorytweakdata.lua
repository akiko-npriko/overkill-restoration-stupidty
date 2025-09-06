Hooks:PostHook(WeaponFactoryTweakData, "init", "VSK94_init", function(self)
	
 self.parts.wpn_fps_ass_vsk94_mag.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload"
		}

 self.parts.wpn_fps_ass_vsk94_receiver.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		fire = "recoil",
		fire_steelsight = "recoil"
		}
	
end)