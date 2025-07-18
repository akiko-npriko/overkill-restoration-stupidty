Hooks:PostHook(WeaponFactoryTweakData, "init", "TyphoonFireSounds", function(self)
	self.parts.wpn_fps_smg_crysis3_typhoon_body.override_weapon = {
		sounds = {
			fire = "typhoon_fire",
			fire_single = "typhoon_fire_single",
			fire_auto = "typhoon_fire",
			stop_fire = "typhoon_fire_stop"
		},
	}
end)