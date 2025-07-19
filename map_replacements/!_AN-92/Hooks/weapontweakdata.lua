Hooks:PostHook( WeaponTweakData, "init", "tiltModInit", function(self)
if not self.CustomWeaponsRebalanceEnabled then
if self.tilt then
	self.tilt.AMMO_PICKUP = deep_clone(self.new_m4.AMMO_PICKUP)
end
end
end )