Hooks:PostHook(WeaponFactoryTweakData, "init", "KS23ModInit", function(self)
	local custom_wpn_id = "wpn_fps_shot_ks23"
	local stance_wpn_id = "wpn_fps_ass_amcar"
	for _, part_id in pairs(self[custom_wpn_id].uses_parts) do
		if self.parts[part_id] then
			if self.parts[part_id].type == "sight" or self.parts[part_id].a_obj == "a_o" then
				if self.parts[part_id].stance_mod and self.parts[part_id].stance_mod[stance_wpn_id] then
					self.parts[part_id].stance_mod[custom_wpn_id] = deep_clone(self.parts[part_id].stance_mod[stance_wpn_id])
				end
			end
		end
	end
end)