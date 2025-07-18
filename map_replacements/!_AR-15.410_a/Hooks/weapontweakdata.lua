Hooks:PostHook( WeaponTweakData, "init", "omni_falloff_real_init", function(self)

self.omni.damage_falloff = self.saiga.damage_falloff

self.omni_crew = deep_clone(self.saiga_crew)
self.omni_crew.sounds.prefix = "benelli_m4_npc"
self.omni_crew.hold = "rifle"

end )