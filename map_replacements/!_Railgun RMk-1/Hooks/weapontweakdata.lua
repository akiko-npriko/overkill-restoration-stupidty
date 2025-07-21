Hooks:PostHook(WeaponTweakData, "init", "RoachModInit", function(self)

	self.roach_crew = deep_clone(self.b682_crew)
	self.roach_crew.usage = "is_sniper"
	self.roach_crew.anim_usage = "is_rifle"
	self.roach_crew.categories = clone(self.roach.categories)
	self.roach_crew.sounds.prefix = "barrett_npc"
	self.roach_crew.muzzleflash = "effects/payday2/particles/weapons/50cal_auto"
	self.roach_crew.shell_ejection = "effects/payday2/particles/weapons/shells/shell_empty"
	self.roach_crew.looped_reload_speed = nil
	--self.roach_crew.pull_magazine_during_reload = "rifle"
	self.roach_crew.hold = "rifle"
	--self.roach_crew.reload = "bullpup"
	self.roach_crew.FIRE_MODE = "single"
	self.roach_crew.is_shotgun = false
	--self.roach.damage_falloff = self.rpg7.damage_falloff
	
end)