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
	
	if not BeardLib.Utils:FindMod("RestorationMod") then
		self.spas15_crew.DAMAGE = 2.6
		self.spas15_crew.CLIP_AMMO_MAX = 6
		self.spas15_crew.NR_CLIPS_MAX = 14
		self.spas15_crew.auto.fire_rate = 0.1714
		self.spas15_crew.alert_size = 4500
		self.spas15_crew.suppression = 1.8
	end

end)