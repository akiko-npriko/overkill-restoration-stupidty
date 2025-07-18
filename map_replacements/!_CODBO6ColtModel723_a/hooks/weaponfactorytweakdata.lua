Hooks:PostHook(WeaponFactoryTweakData, "init", "coslo723_factorytweakdata_init", function(self)

	self:_clone_part_type_for_weapon("magazine", "wpn_fps_ass_coslo723", 1)

	self.parts.wpn_fps_ass_coslo723_receiver_lower.animations = {
		reload_not_empty = "reload_not_empty",
		reload = "reload",
		}
	
	
end)