Hooks:PostHook(WeaponTweakData, "init", "dd5paint", function(self)

self.dd5.damage_falloff = self.scar.damage_falloff

self.dd5_crew = deep_clone(self.scar_crew)
self.dd5_crew.sounds.prefix = "hcar_npc"
self.dd5_crew.hold = "rifle"

end)