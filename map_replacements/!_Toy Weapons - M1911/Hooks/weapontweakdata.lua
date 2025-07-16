Hooks:PostHook( WeaponTweakData, "init", "toy1911ModInit", function(self)
if not SystemFS:exists("mods/DMCWO/mod.txt") and not SystemFS:exists("mods/sc/mod.txt") and not SystemFS:exists("mods/Seamlink Gameplay Overhaul/mod.txt") then
if self.toym16 then
	self.toy1911.AMMO_PICKUP = {1200, 1200}
end
end
end )