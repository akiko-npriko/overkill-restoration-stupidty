Hooks:PostHook( WeaponTweakData, "init", "pp91ModInit", function(self)
if not SystemFS:exists("mods/DMCWO/mod.txt") and not SystemFS:exists("mods/Seamlink Gameplay Overhaul/mod.txt") then
if self.kedr then
	self.kedr.AMMO_PICKUP = deep_clone(self.olympic.AMMO_PICKUP)
end
if self.x_kedr then
	self.x_kedr.AMMO_PICKUP = deep_clone(self.x_olympic.AMMO_PICKUP)
end
end
end )