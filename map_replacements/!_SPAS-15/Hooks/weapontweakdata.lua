Hooks:PostHook(WeaponTweakData, "init", "SPAS15ModInit", function(self)

	self.spas15_crew = deep_clone(self.g36_crew)
	self.spas15_crew = {
		usage = "is_shotgun_mag",
		sounds = {},
		use_data = {},
		auto = {}
	}	
	self.spas15_crew.sounds.prefix = "spas_npc"
	self.spas15_crew.muzzleflash = "effects/payday2/particles/weapons/762_auto"
	self.spas15_crew.shell_ejection = "effects/payday2/particles/weapons/shells/shell_slug"
	self.spas15_crew.pull_magazine_during_reload = "rifle"
	self.spas15_crew.hold = "rifle"
	self.spas15_crew.FIRE_MODE = "auto"
	self.spas15_crew.is_shotgun = true
	

end)