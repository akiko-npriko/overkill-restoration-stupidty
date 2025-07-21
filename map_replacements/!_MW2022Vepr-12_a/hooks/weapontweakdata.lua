Hooks:PostHook(WeaponTweakData, "init", "vecho_weapontweakdata_init", function(self)

	--[[	
	self.vecho.timers = {
		--reload_not_empty = 2.7,
		--reload_empty = 3.3,
		unequip = 0.6,
		equip = 0.6
	}
	]]
	self.vecho.timers.unequip = 0.6
	self.vecho.timers.equip = 0.6

--	self.parts.wpn_fps_shot_vecho_drum.override = {
--		self.vecho.timers = {
--		reload_not_empty = 3.35,
--		reload_empty = 4.8,
--		unequip = 0.6,
--		equip = 0.6
--		}
--	}
		


	
	
	
end )