Hooks:PostHook(WeaponFactoryTweakData, "init", "l403a1_weaponfactorytweakdata_init", function(self)

	self:_clone_part_type_for_weapon("magazine", "wpn_fps_ass_l403a1", 1)

	self.parts.wpn_fps_ass_l403a1_receiver_lower.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		}
	
	
end)