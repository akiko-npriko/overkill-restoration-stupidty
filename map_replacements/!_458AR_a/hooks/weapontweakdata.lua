Hooks:PostHook( WeaponTweakData, "init", "sierra458_falloff_real_init", function(self)

--[[if self.sg416 then 
	self.sierra458.weapon_hold = "sg416"
end]]
	
self.sierra458.animations.equip_id = "equip_sierra458"
--self.sierra458.damage_falloff = self.tti.damage_falloff

self.sierra458_crew = deep_clone(self.siltstone_crew)
self.sierra458_crew.muzzleflash = "effects/payday2/particles/weapons/50cal_auto"
self.sierra458_crew.muzzleflash_silenced = "effects/payday2/particles/weapons/9mm_auto_silence"
self.sierra458_crew.shell_ejection = "effects/payday2/particles/weapons/shells/shell_shak"
self.sierra458_crew.sounds.prefix = "m14_npc"

end )