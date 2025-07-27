Hooks:PostHook(WeaponTweakData, "init", "cdhook_mp5akimbo", function(self)

      self.x_mp5_npc = deep_clone(self.x_mp5_crew)
	  self.x_mp5_npc.sounds = self.mp5_npc.sounds
	  
	  self.x_mp5_npc.DAMAGE = 2.83
end)