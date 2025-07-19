Hooks:PostHook(WeaponFactoryTweakData, "init", "pewpew", function(self)

	self.parts.wpn_fps_sickle_m_battery.custom_stats = {
		sweetliberty = {
			regen_ammo_time = 0.5, -- delay to start regen 
			regen_rate = 5, -- speed of regen per second
		}
	}
end)
