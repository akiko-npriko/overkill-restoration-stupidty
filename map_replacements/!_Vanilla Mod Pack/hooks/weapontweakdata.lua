Hooks:PostHook( WeaponTweakData, "init", "vanillamodattachmentsInit", function(self)

--[[
self.sg416.damage_falloff = self.new_m4.damage_falloff
self.spike.damage_falloff = self.new_m4.damage_falloff
self.ak5s.damage_falloff = self.olympic.damage_falloff
self.x_ak5s.damage_falloff = self.x_olympic.damage_falloff
self.lebman.damage_falloff = self.ppk.damage_falloff
self.sgs.damage_falloff = self.siltstone.damage_falloff
self.x_lebman.damage_falloff = self.ppk.damage_falloff
self.car9.damage_falloff = self.ppk.damage_falloff
self.x_car9.damage_falloff = self.ppk.damage_falloff
self.amr12.damage_falloff = self.saiga.damage_falloff
self.bdgr.damage_falloff = self.new_m4.damage_falloff	
self.bs23.damage_falloff = self.new_m4.damage_falloff


self.bdgr.timers.reload_not_empty = 2.7
self.bdgr.timers.reload_empty = 3.7

self.ak5s.timers.reload_not_empty = 2.7
self.ak5s.timers.reload_empty = 3.7

self.sg416.timers.reload_not_empty = 2.7
self.sg416.timers.reload_empty = 3.7
]]
self.amr12.weapon_hold = "bdgr"

--[[
self.bs23.timers.shotgun_reload_exit_empty = 1.1
self.bs23.timers.equip = 0.4
self.bs23.timers.shotgun_reload_exit_not_empty = 0.5
]]
end )