Hooks:PostHook(WeaponFactoryTweakData, "init", "tti_dracarys_weaponfactorytweakdata_init", function(self)

	self.parts.wpn_fps_shot_tti_dracarys_receiver_lower.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		magazine_empty = "last_recoil"
		}

	self:_clone_part_type_for_weapon("magazine", "wpn_fps_shot_tti_dracarys", 1)

end)