Hooks:PostHook( WeaponTweakData, "init", "KOInit2", function(self)
if not SystemFS:exists("mods/DMCWO/mod.txt") and not SystemFS:exists("mods/sc/mod.txt") and not SystemFS:exists("mods/Seamlink Gameplay Overhaul/mod.txt") then

	if self.knockout then
		self.knockout.stats_modifiers = {damage = 5}
		self.knockout.AMMO_PICKUP = {0.3, 0.5}
	end
end
end)