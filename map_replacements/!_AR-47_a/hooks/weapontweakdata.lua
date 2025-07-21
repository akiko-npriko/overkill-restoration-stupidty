Hooks:PostHook( WeaponTweakData, "init", "ar47_falloff_real_init", function(self)

--self.ar47.damage_falloff = self.akm.damage_falloff

self.ar47_crew = deep_clone(self.akm_crew)
self.ar47_crew.sounds.prefix = "m4_npc"

end )