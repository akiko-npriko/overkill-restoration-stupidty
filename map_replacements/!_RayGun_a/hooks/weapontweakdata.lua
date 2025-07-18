Hooks:PostHook(WeaponTweakData, "init", "raygun_wtf", function(self)
	self.raygun.animations.magazine_empty = nil
	self.raygun.unlock_func = nil
end)