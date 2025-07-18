Hooks:PostHook(WeaponFactoryTweakData, "init", "InstantConcussionBulletBase_TweakData", function(self)
	self.parts.wpn_fps_ass_ar32_ammo_concussion.custom_stats = {
		bullet_class = "InstantConcussionBulletBase",
		rays = 1,
		damage_far_mul = 1,
		damage_near_mul = 1,
		ammo_pickup_min_mul = 1.5,
		ammo_pickup_max_mul = 3
	}
end)