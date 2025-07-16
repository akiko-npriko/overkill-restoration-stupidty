Hooks:PostHook( WeaponTweakData, "init", "af2011ModInit", function(self)
if not SystemFS:exists("mods/DMCWO/mod.txt") and not SystemFS:exists("mods/sc/mod.txt") and not SystemFS:exists("mods/Seamlink Gameplay Overhaul/mod.txt") then
if self.af2011 then
	self.af2011.AMMO_PICKUP = {1, 2.5}
	self.x_af2011.AMMO_PICKUP = {1, 2.5}
end
end
end )